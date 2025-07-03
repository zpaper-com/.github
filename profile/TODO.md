# TODO, FIXME, HACK, and Other Comment Markers

## Overview
This document contains a comprehensive scan of all zpaper-com repositories for comment markers indicating >

**Scan Date**: 2025-07-03
**Total Repositories Scanned**: 41
**Comment Markers Found**: 65+

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


### 🏥 EMR
**Priority**: 🔴 High - Security & Configuration Hacks

**File**: `zSend.html`
- **Line 162**: `//ERS220614 HACK TODO CRN220614 custom setting`
- **Line 370**: `var zHost=""; //https://zp50.zpaper.com"; //ERS230904 TERRIBLE HACK`
- **Line 379**: `sfType="Account"; //ERS230904 hack aways`
- **Line 387**: `var xtraFilter = null; //ERS230904 HACK EOJ`
- **Line 688**: `//ERS210824 HACK postUrl="https://gw.zpaper.com/kb/jsp/SF_sendFax.jsp";`

**Impact**: Multiple configuration hacks that need proper implementation.

---

### 🤖 Agents
**Priority**: 🔴 High - Authentication Security

**File**: `src/main/webapp/index.jsp`
- **Line 64**: `//CMA150216 No time to do this properly with a container Realm so I'm doing this hack.`

**File**: `src/main/webapp/AdminCookie.jspf`
- **Line 6**: `The purpose of this hack is to provide a quick way to set and retrieve zPaper Admin Authent>

**Impact**: Authentication system using temporary hacks instead of proper security implementation.

---

### 🌐 Gateway
**Priority**: 🟡 Medium - API Deprecation

**File**: `src/main/java/com/zpaper/gateway/ZippiProxyServlet.java`
- **Line 38**: `to add the X-API-Key, X-API-User, and X-Z-SFuser(deprecated) headers`
- **Line 69**: `if (StringUtils.isNotBlank(s = servletRequest.getHeader("X-Z-SFUser"))) { // Deprecated. U>

**Impact**: Deprecated API headers still in use, migration needed.

---

### ⚡ zpaper-sprkz
**Priority**: 🟡 Medium - Configuration Management

**File**: `src/server/zpaperService.js`
- **Line 434**: `let zpServer = 'gw.zpaper.com'; //TODO: we need to change this to localhost, NOTE: zippi >

**Impact**: Server configuration needs environment-specific handling.

---

### 👤 userinfo-middleware
**Priority**: 🟡 Medium - Missing Features

**File**: `userinfo.js`
- **Line 3**: `//TODO: add aws-sdk (cloudwatch) to track logging`
- **Line 303**: `next();//TODO: check what next(error) would do here`

**Impact**: Missing logging infrastructure and error handling clarification needed.

---

### 🧠 zRAG
**Priority**: 🟡 Medium - Function Message Support

**File**: `patch/chat_models.js`
- **Line 140**: `// TODO: Function messages do not support array content, fix cast`

**Impact**: Message processing limitation needs resolution.

---

### 🧪 zippi_testing
**Priority**: 🟡 Medium - Test Improvements

**File**: `src/test/java/com/zpaper/service/ItemsApiHelperTest.java`
- **Line 220**: `// TODO: Code issue identified. searching by 24hour period rather than everything within >

**File**: `src/test/java/com/zpaper/service/BaseTest.java`
- **Line 108**: `// TODO: build a mock Deployment object`

**Impact**: Test accuracy and mock object implementations needed.

---

### 🔧 zpaper-commons
**Priority**: 🟡 Medium - Utility Functions

**File**: `src/main/java/com/zpaper/commons/utils/Utils.java`
- **Lines 360-365**: Multiple TODO comments about truncating LSD (Least Significant Digit)

**Impact**: Utility function improvements for data processing.

---

### 🛠️ install-wizard
**Priority**: 🟢 Low - Debug Cleanup

**Multiple Files**: Various JavaScript files contain `console.debug` statements and debugging code.

**Impact**: Debug code cleanup needed for production.

---

## Summary by Marker Type

### 📋 TODO Items (20+)
- **Infrastructure**: AWS CDK setup, Fargate services, ALB configuration
- **Features**: Missing functionality implementations
- **Configuration**: Environment-specific settings
- **Testing**: Mock objects and test improvements

### 🔨 HACK Items (10+)
- **Authentication**: Temporary auth cookie solutions
- **Configuration**: Server URL and settings workarounds
- **API**: Header and proxy implementations

### 🐛 FIXME Items (30+)
- **Third-party Libraries**: Issues in forge.bundle.js, jQuery libraries
- **UI**: Rendering and performance issues
- **Data Processing**: Search and filtering problems

### 📚 DEPRECATED Items (5+)
- **API Headers**: X-Z-SFUser header usage
- **CSS**: Styling approaches
- **Endpoints**: Legacy API patterns

---

## File Coverage Summary

### Scanned File Types
- **JavaScript/TypeScript**: `.js`, `.ts`, `.jsx`, `.tsx`
- **Java**: `.java`
- **HTML/CSS**: `.html`, `.css`, `.scss`
- **Configuration**: `.json`, `.yaml`, `.yml`, `.xml`
- **Documentation**: `.md`
- **Shell Scripts**: `.sh`, `.bash`

### Excluded Patterns
- `node_modules/`
- `.git/`
- Binary files
- Vendor/third-party libraries (except where markers found)

---

*Last Updated: 2025-07-03*
*Next Review: 2025-08-03*
