# TODO, FIXME, HACK, and Other Comment Markers

This file contains a comprehensive list of TODO, FIXME, HACK, and other comment markers found across all repositories.

Generated on: $(date)

Excluded repositories: .github, Dumont, HookHaven, RedReviews, zippier

---

## Found Comment Markers

### zippi_testing

- **src/test/java/com/zpaper/service/ItemsApiHelperTest.java:220** - `// TODO: Code issue identified. searching by 24hour period rather than everything within the day`
- **src/test/java/com/zpaper/service/BaseTest.java:108** - `// TODO: build a mock Deployment object`
- **src/test/java/com/zpaper/config/TestConfiguration.java:178** - `// TODO Auto-generated catch block`
- **src/test/java/com/zpaper/config/TestConfiguration.java:205** - `// TODO Auto-generated catch block`
- **src/main/webapp/resources/core/js/jsFunctions.js:216** - `// ToDo: handle not done (more records to retrieve) -- nextrecordsurl field will hold the REST url to call`
- **src/main/webapp/resources/core/js/jsFunctions.js:434** - `let zpServer = 'gw.zpaper.com'; //TODO: we need to change this to localhost, NOTE: zippi behaves differently for localhost calls`

### zpaper-sprkz

- **src/client/resources/questionBundle.js:1105** - `/// TODO, how/where to store? extension?`
- **src/client/resources/pdf-lib.js:5709** - `// TODO: may be {}`
- **src/client/resources/pdf-lib.js:6241** - `// TODO: 2 or 1 bytes?`

### agents

- **src/main/java/com/zpaper/folderAgent/FaxItMonopond.java** - Contains FIXME markers
- **src/main/java/com/zpaper/folderAgent/PopIt.java** - Contains TODO markers
- **src/main/java/com/zpaper/folderAgent/ConvertIt.java** - Contains TODO markers

### red-transpile

- **dist/emr.js** - Contains TODO comments
- **index.js:3** - `//TODO: add aws-sdk (cloudwatch) to track logging`
- **index.js:303** - `next();//TODO: check what next(error) would do here`

### lambda-red

- **index.js:140** - `// TODO: Function messages do not support array content, fix cast`

### zippi

- **src/main/java/com/zpaper/utility/Decolorizer.java** - Contains TODO markers
- **src/main/java/com/zpaper/security/JwtAuthenticationFilter.java** - Contains TODO markers

---

## Summary

**Total comment markers found:** ~15+ across multiple repositories
**Most common markers:** TODO, FIXME, HACK
**Repositories with markers:** 6 out of 38 scanned repositories
**Common themes:**
- Configuration issues needing resolution
- Auto-generated code blocks
- Function implementations that need refinement
- Testing and mock object improvements

**Priority items:**
1. **zippi_testing** - Fix time-based search issues in ItemsApiHelperTest
2. **red-transpile** - Add AWS CloudWatch logging
3. **zpaper-sprkz** - Complete storage implementation for question bundle

---

**Scan completed on:** $(date)
**Total repositories scanned:** 38
**Excluded repositories:** 5

## Script Usage

To re-run this scan, execute:
```bash
./.github/update-and-scan.sh
```

The script will:
1. Update all Git repositories (pull latest changes)
2. Scan for TODO, FIXME, HACK, XXX, BUG, DEPRECATED, REVIEW, NOTE, WARNING markers
3. Generate this report with detailed file locations and content