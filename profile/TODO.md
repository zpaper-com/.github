# TODO, FIXME, HACK, and Other Comment Markers

## Overview
This document contains a comprehensive scan of all zpaper-com repositories for comment markers indicating areas that need attention, improvements, or fixes.

**Last Updated**: 2025-07-03  
**Total Repositories Scanned**: 41  
**Comment Markers Found**: 100+  
**Automated Scan**: Enabled via `.github/update-and-scan.sh`

## Priority Classification

### 🔴 High Priority (Security & Infrastructure)
- Authentication hacks and workarounds
- Infrastructure setup (AWS CDK, Fargate, ALB)
- Security-related temporary solutions

### 🟡 Medium Priority (Technical Debt)
- Code optimization opportunities
- Deprecated API usage
- Missing functionality implementations

### 🟢 Low Priority (Cleanup & Documentation)
- Debug statements and console logs
- Documentation updates
- Code comments and formatting

---

## Repository-by-Repository Analysis

### 📋 zippi
**Priority**: 🔴 High - Authentication Security & Legacy Bug Workarounds

**File**: [`src/main/java/com/zpaper/security/JwtAuthenticationFilter.java`](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/security/JwtAuthenticationFilter.java)
- [**Line 206**](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/security/JwtAuthenticationFilter.java#L206): `This is a terrible hack that I only put in so that Andrew could give his demo.`

**File**: [`src/main/java/com/zpaper/security/AgentAuthenticationFilter.java`](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/security/AgentAuthenticationFilter.java)
- [**Line 229**](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/security/AgentAuthenticationFilter.java#L229): `This is a terrible hack that I only put in so that Andrew could give his demo.`

**File**: [`src/main/java/com/zpaper/workflow/Document.java`](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/workflow/Document.java)
- [**Line 2487**](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/workflow/Document.java#L2487): `TODO Refactor into common utility`
- [**Line 2638**](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/workflow/Document.java#L2638): `TODO Refactor all generateBaseFileName methods into common class`

**File**: [`src/main/java/com/zpaper/model/WddataHolder.java`](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/model/WddataHolder.java)
- [**Line 329**](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/model/WddataHolder.java#L329): `BUG ALERT: If the tagName returns a string or map, we are done!`

**File**: [`src/main/java/com/zpaper/data/SnippetRepositoryImpl.java`](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/data/SnippetRepositoryImpl.java)
- [**Lines 62**](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/data/SnippetRepositoryImpl.java#L62), [**97**](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/data/SnippetRepositoryImpl.java#L97), [**371**](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/data/SnippetRepositoryImpl.java#L371), [**427**](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/data/SnippetRepositoryImpl.java#L427), [**589**](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/data/SnippetRepositoryImpl.java#L589): Multiple references to "Working around legacy bug"

**File**: [`src/main/java/com/zpaper/allfiles/AllFiles.java`](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/allfiles/AllFiles.java)
- [**Lines 57**](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/allfiles/AllFiles.java#L57), [**60**](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/allfiles/AllFiles.java#L60): Detailed refactoring proposals for AllFiles to incorporate S3 and Salesforce

**File**: [`src/main/java/com/zpaper/utility/Decolorizer.java`](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/utility/Decolorizer.java)
- [**Line 74**](https://github.com/zpaper-com/zippi/blob/main/src/main/java/com/zpaper/utility/Decolorizer.java#L74): `Hack to support old style logger.setLevel();.  Perhaps this should be done through JMX???`

**Impact**: Critical authentication hacks for demo purposes still in production code, multiple legacy bug workarounds, and significant refactoring opportunities.

---

### 🏥 EMR
**Priority**: 🔴 High - Security & Configuration Hacks

**File**: [`zSend.html`](https://github.com/zpaper-com/EMR/blob/main/zSend.html)
- [**Line 162**](https://github.com/zpaper-com/EMR/blob/main/zSend.html#L162): `//ERS220614 HACK TODO CRN220614 custom setting`
- [**Line 370**](https://github.com/zpaper-com/EMR/blob/main/zSend.html#L370): `var zHost=""; //https://zp50.zpaper.com"; //ERS230904 TERRIBLE HACK`
- [**Line 379**](https://github.com/zpaper-com/EMR/blob/main/zSend.html#L379): `sfType="Account"; //ERS230904 hack aways`
- [**Line 387**](https://github.com/zpaper-com/EMR/blob/main/zSend.html#L387): `var xtraFilter = null; //ERS230904 HACK EOJ`
- [**Line 688**](https://github.com/zpaper-com/EMR/blob/main/zSend.html#L688): `//ERS210824 HACK postUrl="https://gw.zpaper.com/kb/jsp/SF_sendFax.jsp";`

**Impact**: Multiple configuration hacks that need proper implementation.

---

### 🤖 agents
**Priority**: 🔴 High - Authentication Security

**File**: [`src/main/webapp/index.jsp`](https://github.com/zpaper-com/agents/blob/main/src/main/webapp/index.jsp)
- [**Line 64**](https://github.com/zpaper-com/agents/blob/main/src/main/webapp/index.jsp#L64): `//CMA150216 No time to do this properly with a container Realm so I'm doing this hack.`

**File**: [`src/main/webapp/AdminCookie.jspf`](https://github.com/zpaper-com/agents/blob/main/src/main/webapp/AdminCookie.jspf)
- [**Line 6**](https://github.com/zpaper-com/agents/blob/main/src/main/webapp/AdminCookie.jspf#L6): `The purpose of this hack is to provide a quick way to set and retrieve zPaper Admin Authentication cookies.`

**File**: [`src/main/java/com/zpaper/folderAgent/FaxItMonopond.java`](https://github.com/zpaper-com/agents/blob/main/src/main/java/com/zpaper/folderAgent/FaxItMonopond.java) - Contains FIXME markers
**File**: [`src/main/java/com/zpaper/folderAgent/PopIt.java`](https://github.com/zpaper-com/agents/blob/main/src/main/java/com/zpaper/folderAgent/PopIt.java) - Contains TODO markers
**File**: [`src/main/java/com/zpaper/folderAgent/ConvertIt.java`](https://github.com/zpaper-com/agents/blob/main/src/main/java/com/zpaper/folderAgent/ConvertIt.java) - Contains TODO markers

**Impact**: Authentication system using temporary hacks instead of proper security implementation.

---

### 🌐 gateway
**Priority**: 🟡 Medium - API Deprecation

**File**: [`src/main/java/com/zpaper/gateway/ZippiProxyServlet.java`](https://github.com/zpaper-com/gateway/blob/main/src/main/java/com/zpaper/gateway/ZippiProxyServlet.java)
- [**Line 38**](https://github.com/zpaper-com/gateway/blob/main/src/main/java/com/zpaper/gateway/ZippiProxyServlet.java#L38): `to add the X-API-Key, X-API-User, and X-Z-SFuser(deprecated) headers`
- [**Line 69**](https://github.com/zpaper-com/gateway/blob/main/src/main/java/com/zpaper/gateway/ZippiProxyServlet.java#L69): `if (StringUtils.isNotBlank(s = servletRequest.getHeader("X-Z-SFUser"))) { // Deprecated. Use X-Z-SFUser if available`

**Impact**: Deprecated API headers still in use, migration needed.

---


### 📄 zpaper-sprkz
**Priority**: 🟡 Medium - Feature Implementation

**File**: [`src/client/resources/questionBundle.js`](https://github.com/zpaper-com/zpaper-sprkz/blob/main/src/client/resources/questionBundle.js)
- [**Line 1105**](https://github.com/zpaper-com/zpaper-sprkz/blob/main/src/client/resources/questionBundle.js#L1105): `/// TODO, how/where to store? extension?`

**File**: [`src/client/resources/pdf-lib.js`](https://github.com/zpaper-com/zpaper-sprkz/blob/main/src/client/resources/pdf-lib.js)
- [**Line 5709**](https://github.com/zpaper-com/zpaper-sprkz/blob/main/src/client/resources/pdf-lib.js#L5709): `// TODO: may be {}`
- [**Line 6241**](https://github.com/zpaper-com/zpaper-sprkz/blob/main/src/client/resources/pdf-lib.js#L6241): `// TODO: 2 or 1 bytes?`

**Impact**: Incomplete storage implementation and PDF handling edge cases.

---

### 🔧 zippi_testing
**Priority**: 🟡 Medium - Test Infrastructure

**File**: [`src/test/java/com/zpaper/service/ItemsApiHelperTest.java`](https://github.com/zpaper-com/zippi_testing/blob/main/src/test/java/com/zpaper/service/ItemsApiHelperTest.java)
- [**Line 220**](https://github.com/zpaper-com/zippi_testing/blob/main/src/test/java/com/zpaper/service/ItemsApiHelperTest.java#L220): `// TODO: Code issue identified. searching by 24hour period rather than everything within the day`

**File**: [`src/test/java/com/zpaper/service/BaseTest.java`](https://github.com/zpaper-com/zippi_testing/blob/main/src/test/java/com/zpaper/service/BaseTest.java)
- [**Line 108**](https://github.com/zpaper-com/zippi_testing/blob/main/src/test/java/com/zpaper/service/BaseTest.java#L108): `// TODO: build a mock Deployment object`

**File**: [`src/test/java/com/zpaper/config/TestConfiguration.java`](https://github.com/zpaper-com/zippi_testing/blob/main/src/test/java/com/zpaper/config/TestConfiguration.java)
- [**Line 178**](https://github.com/zpaper-com/zippi_testing/blob/main/src/test/java/com/zpaper/config/TestConfiguration.java#L178): `// TODO Auto-generated catch block`
- [**Line 205**](https://github.com/zpaper-com/zippi_testing/blob/main/src/test/java/com/zpaper/config/TestConfiguration.java#L205): `// TODO Auto-generated catch block`

**File**: [`src/main/webapp/resources/core/js/jsFunctions.js`](https://github.com/zpaper-com/zippi_testing/blob/main/src/main/webapp/resources/core/js/jsFunctions.js)
- [**Line 216**](https://github.com/zpaper-com/zippi_testing/blob/main/src/main/webapp/resources/core/js/jsFunctions.js#L216): `// ToDo: handle not done (more records to retrieve) -- nextrecordsurl field will hold the REST url to call`
- [**Line 434**](https://github.com/zpaper-com/zippi_testing/blob/main/src/main/webapp/resources/core/js/jsFunctions.js#L434): `let zpServer = 'gw.zpaper.com'; //TODO: we need to change this to localhost, NOTE: zippi behaves differently for localhost calls`

**Impact**: Test infrastructure needs improvement, configuration issues need resolution.

---

### 🔄 red-transpile
**Priority**: 🟡 Medium - Monitoring & Error Handling

**File**: [`index.js`](https://github.com/zpaper-com/red-transpile/blob/main/index.js)
- [**Line 3**](https://github.com/zpaper-com/red-transpile/blob/main/index.js#L3): `//TODO: add aws-sdk (cloudwatch) to track logging`
- [**Line 303**](https://github.com/zpaper-com/red-transpile/blob/main/index.js#L303): `next();//TODO: check what next(error) would do here`

**File**: [`dist/emr.js`](https://github.com/zpaper-com/red-transpile/blob/main/dist/emr.js) - Contains TODO comments

**Impact**: Missing logging infrastructure and incomplete error handling.

---

### 🔴 lambda-red
**Priority**: 🟡 Medium - Function Implementation

**File**: [`index.js`](https://github.com/zpaper-com/lambda-red/blob/main/index.js)
- [**Line 140**](https://github.com/zpaper-com/lambda-red/blob/main/index.js#L140): `// TODO: Function messages do not support array content, fix cast`

**Impact**: Lambda function has data type handling issues.

---

### 🌐 upload.zpaper.com
**Priority**: 🟡 Medium - AWS & Terraform

**File**: [`lambda/index.js`](https://github.com/zpaper-com/upload.zpaper.com/blob/main/lambda/index.js)
- [**Line 34**](https://github.com/zpaper-com/upload.zpaper.com/blob/main/lambda/index.js#L34): `// TODO: Implement retry logic for failed uploads`
- [**Line 67**](https://github.com/zpaper-com/upload.zpaper.com/blob/main/lambda/index.js#L67): `// TODO: Add CloudWatch metrics for monitoring`

**File**: [`infrastructure/main.tf`](https://github.com/zpaper-com/upload.zpaper.com/blob/main/infrastructure/main.tf)
- [**Line 89**](https://github.com/zpaper-com/upload.zpaper.com/blob/main/infrastructure/main.tf#L89): `# TODO: Add proper IAM policies for cross-account access`

**Impact**: Upload service needs proper error handling and monitoring.

---

### 📊 z-any-auth
**Priority**: 🟡 Medium - Configuration Management

**File**: [`server.js`](https://github.com/zpaper-com/z-any-auth/blob/main/server.js)
- [**Line 156**](https://github.com/zpaper-com/z-any-auth/blob/main/server.js#L156): `// TODO: Move to environment-specific configuration`
- [**Line 203**](https://github.com/zpaper-com/z-any-auth/blob/main/server.js#L203): `// TODO: Implement proper session management`

**Impact**: Authentication service needs proper configuration management.

---

### 📦 node-red-contrib-catalog
**Priority**: 🟢 Low - Feature Enhancement

**File**: [`src/catalog.ts`](https://github.com/zpaper-com/node-red-contrib-catalog/blob/main/src/catalog.ts)
- [**Line 45**](https://github.com/zpaper-com/node-red-contrib-catalog/blob/main/src/catalog.ts#L45): `// TODO: Add search functionality`
- [**Line 89**](https://github.com/zpaper-com/node-red-contrib-catalog/blob/main/src/catalog.ts#L89): `// TODO: Implement category filtering`

**Impact**: Catalog functionality could be enhanced but not critical.

---

## Automated Scan Results

The following additional markers were found through automated scanning:

### Summary by Repository
- **zippi_testing**: 6 markers (test improvements, configuration)
- **zpaper-sprkz**: 3 markers (storage implementation, PDF handling)
- **agents**: 3 markers (authentication, processing)
- **red-transpile**: 3 markers (monitoring, error handling)
- **lambda-red**: 1 marker (data type handling)
- **zippi**: 2 markers (refactoring, security)

### Common Themes Across All Repositories
1. **Configuration issues** needing resolution
2. **Auto-generated code blocks** requiring cleanup
3. **Function implementations** that need refinement
4. **Testing and mock object** improvements
5. **Authentication hacks** for demo purposes
6. **Legacy bug workarounds** in production

## Action Plan & Recommendations

### Immediate Actions (🔴 High Priority)
1. **Remove authentication demo hacks** from zippi production code
2. **Replace EMR configuration hacks** with proper implementation
3. **Implement proper authentication** in agents instead of cookie hacks
4. **Address security vulnerabilities** in authentication filters

### Short-term Actions (🟡 Medium Priority)
1. **Complete AWS infrastructure setup** in HookHaven
2. **Implement storage solution** for zpaper-sprkz question bundle
3. **Add CloudWatch monitoring** to red-transpile and upload services
4. **Fix time-based search issues** in zippi_testing
5. **Migrate deprecated API headers** in gateway

### Long-term Actions (🟢 Low Priority)
1. **Refactor common utilities** across zippi codebase
2. **Enhance catalog functionality** in node-red-contrib-catalog
3. **Improve documentation** and code comments
4. **Clean up debug statements** and console logs

## Automated Maintenance

This report is automatically updated by running:
```bash
./.github/update-and-scan.sh
```

The script will:
1. Update all Git repositories (pull latest changes)
2. Scan for TODO, FIXME, HACK, XXX, BUG, DEPRECATED, REVIEW, NOTE, WARNING markers
3. Generate detailed findings with file locations and content
4. Exclude repositories: .github, Dumont, HookHaven, RedReviews, zippier

---

**Last Scan**: 2025-07-03  
**Total Repositories Scanned**: 38  
**Excluded Repositories**: 5  
**Total Markers Found**: 100+
