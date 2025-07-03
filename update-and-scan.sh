#!/bin/bash

# Script to update all repositories and scan for TODO, FIXME, HACK, and other comment markers
# Excludes: .github, Dumont, HookHaven, RedReviews, zippier

set -e

ALLREPOS_DIR="/home/shawnstorie/allrepos"
EXCLUDE_REPOS=(".github" "Dumont" "HookHaven" "RedReviews" "zippier")
TODO_FILE="${ALLREPOS_DIR}/.github/TODO.md"
COMMENT_MARKERS=("TODO" "FIXME" "HACK" "XXX" "BUG" "DEPRECATED" "REVIEW" "NOTE" "WARNING")

# Function to check if a directory should be excluded
is_excluded() {
    local dir="$1"
    for excluded in "${EXCLUDE_REPOS[@]}"; do
        if [[ "$dir" == "$excluded" ]]; then
            return 0
        fi
    done
    return 1
}

# Function to update a git repository
update_repo() {
    local repo_path="$1"
    local repo_name="$2"
    
    echo "Updating repository: $repo_name"
    
    if [ -d "$repo_path/.git" ]; then
        cd "$repo_path"
        
        # Check if there are uncommitted changes
        if ! git diff --quiet HEAD 2>/dev/null; then
            echo "  Warning: $repo_name has uncommitted changes, skipping update"
            return 0
        fi
        
        # Get current branch
        current_branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "")
        
        if [ -n "$current_branch" ]; then
            # Fetch latest changes
            git fetch origin 2>/dev/null || echo "  Warning: Could not fetch from origin for $repo_name"
            
            # Try to pull if on a tracking branch
            if git rev-parse --abbrev-ref --symbolic-full-name @{u} >/dev/null 2>&1; then
                git pull origin "$current_branch" 2>/dev/null || echo "  Warning: Could not pull latest changes for $repo_name"
            else
                echo "  Info: $repo_name is not tracking a remote branch"
            fi
        else
            echo "  Warning: Could not determine current branch for $repo_name"
        fi
    else
        echo "  Info: $repo_name is not a git repository"
    fi
}

# Function to scan for comment markers
scan_for_markers() {
    local repo_path="$1"
    local repo_name="$2"
    local temp_file=$(mktemp)
    
    echo "Scanning repository: $repo_name"
    
    # Create a pattern for ripgrep that matches all comment markers
    local pattern=""
    for marker in "${COMMENT_MARKERS[@]}"; do
        if [ -n "$pattern" ]; then
            pattern="$pattern|"
        fi
        pattern="$pattern$marker"
    done
    
    # Use ripgrep to find all comment markers in actual comments
    # Look for comment patterns followed by the markers
    rg -n -i --type-add 'source:*.{js,ts,jsx,tsx,java,py,rb,go,rs,c,cpp,h,hpp,cs,php,swift,kt,scala,clj,elm,hs,ml,fs,vb,pl,r,m,sh,bash,zsh,fish,ps1,bat,cmd,sql,html,htm,xml,css,scss,sass,less,yaml,yml,json,toml,ini,cfg,conf,properties,md,txt,dockerfile,makefile,cmake,gradle,maven,pom}' \
       --type source \
       -e "(//|#|\*|<!--).*($pattern)" \
       "$repo_path" 2>/dev/null | head -500 > "$temp_file" || true
    
    # Also look for standalone comment markers (might be in block comments)
    rg -n -i --type-add 'source:*.{js,ts,jsx,tsx,java,py,rb,go,rs,c,cpp,h,hpp,cs,php,swift,kt,scala,clj,elm,hs,ml,fs,vb,pl,r,m,sh,bash,zsh,fish,ps1,bat,cmd,sql,html,htm,xml,css,scss,sass,less,yaml,yml,json,toml,ini,cfg,conf,properties,md,txt,dockerfile,makefile,cmake,gradle,maven,pom}' \
       --type source \
       -e "^\s*($pattern)" \
       "$repo_path" 2>/dev/null | head -500 >> "$temp_file" || true
    
    # Process the results
    if [ -s "$temp_file" ]; then
        echo "## $repo_name" >> "$TODO_FILE"
        echo "" >> "$TODO_FILE"
        
        # Sort and deduplicate entries
        sort -u "$temp_file" | while IFS= read -r line; do
            # Extract file path and line number
            file_path=$(echo "$line" | cut -d: -f1)
            line_num=$(echo "$line" | cut -d: -f2)
            content=$(echo "$line" | cut -d: -f3-)
            
            # Make file path relative to repo
            rel_path=$(echo "$file_path" | sed "s|^$repo_path/||")
            
            # Clean up the content
            content=$(echo "$content" | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//')
            
            echo "- **$rel_path:$line_num** - $content" >> "$TODO_FILE"
        done
        
        echo "" >> "$TODO_FILE"
    fi
    
    rm -f "$temp_file"
}

# Main execution
echo "Starting repository update and comment marker scan..."
echo "Excluding repositories: ${EXCLUDE_REPOS[*]}"
echo ""

# Initialize the TODO.md file
cat > "$TODO_FILE" << EOF
# TODO, FIXME, HACK, and Other Comment Markers

This file contains a comprehensive list of TODO, FIXME, HACK, and other comment markers found across all repositories.

Generated on: $(date)

Excluded repositories: ${EXCLUDE_REPOS[*]}

---

EOF

# Process each directory in allrepos
for repo_dir in "$ALLREPOS_DIR"/*/; do
    if [ -d "$repo_dir" ]; then
        repo_name=$(basename "$repo_dir")
        
        # Skip excluded repositories
        if is_excluded "$repo_name"; then
            echo "Skipping excluded repository: $repo_name"
            continue
        fi
        
        # Update the repository
        update_repo "$repo_dir" "$repo_name"
        
        # Scan for comment markers
        scan_for_markers "$repo_dir" "$repo_name"
    fi
done

# Add summary at the end
echo "" >> "$TODO_FILE"
echo "---" >> "$TODO_FILE"
echo "" >> "$TODO_FILE"
echo "**Scan completed on:** $(date)" >> "$TODO_FILE"
echo "**Total repositories scanned:** $(find "$ALLREPOS_DIR" -maxdepth 1 -type d | wc -l | tr -d ' ')" >> "$TODO_FILE"
echo "**Excluded repositories:** ${#EXCLUDE_REPOS[@]}" >> "$TODO_FILE"

echo ""
echo "Update and scan completed!"
echo "Results saved to: $TODO_FILE"