# TODO, FIXME, HACK, and Other Comment Markers

## Overview
This document contains a comprehensive scan of all zpaper-com repositories for comment markers indicating areas that need attention, improvements, or fixes.

**Scan Date**: 2025-07-03  
**Total Repositories Scanned**: 41  
**Comment Markers Found**: 100+

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

**File**: `src/main/java/com/zpaper/security/JwtAuthenticationFilter.java`
- **Line 206**: `This is a terrible hack that I only put in so that Andrew could give his demo.`

**File**: `src/main/java/com/zpaper/security/AgentAuthenticationFilter.java`
- **Line 229**: `This is a terrible hack that I only put in so that Andrew could give his demo.`

**File**: `src/main/java/com/zpaper/workflow/Document.java`
- **Line 2487**: `TODO Refactor into common utility`
- **Line 2638**: `TODO Refactor all generateBaseFileName methods into common class`

**File**: `src/main/java/com/zpaper/model/WddataHolder.java`
- **Line 329**: `BUG ALERT: If the tagName returns a string or map, we are done!`

**File**: `src/main/java/com/zpaper/data/SnippetRepositoryImpl.java`
- **Lines 62, 97, 371, 427, 589**: Multiple references to "Working around legacy bug"

**File**: `src/main/java/com/zpaper/allfiles/AllFiles.java`
- **Lines 57, 60**: Detailed refactoring proposals for AllFiles to incorporate S3 and Salesforce

**File**: `src/main/java/com/zpaper/utility/Decolorizer.java`
- **Line 74**: `Hack to support old style logger.setLevel();.  Perhaps this should be done through JMX???`

**File**: `src/main/resources/jslibs/jsFunctions.js`
- **Line 602**: `TODO ("9123.456","$X,XXX.XX")`
- **Lines 477, 690, 730, 824**: Multiple "hack" references for date handling and browser compatibility

**Impact**: Critical authentication hacks for demo purposes still in production code, multiple legacy bug workarounds, and significant refactoring opportunities.

---

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
- **Line 6**: `The purpose of this hack is to provide a quick way to set and retrieve zPaper Admin Authentication cookies.`

**Impact**: Authentication system using temporary hacks instead of proper security implementation.

---

### 🌐 Gateway
**Priority**: 🟡 Medium - API Deprecation

**File**: `src/main/java/com/zpaper/gateway/ZippiProxyServlet.java`
- **Line 38**: `to add the X-API-Key, X-API-User, and X-Z-SFuser(deprecated) headers`
- **Line 69**: `if (StringUtils.isNotBlank(s = servletRequest.getHeader("X-Z-SFUser"))) { // Deprecated. Use X-Z-SFUser if available`

**Impact**: Deprecated API headers still in use, migration needed.

---

### ⚡ zpaper-sprkz
**Priority**: 🟡 Medium - Configuration Management

**File**: `src/server/zpaperService.js`
- **Line 434**: `let zpServer = 'gw.zpaper.com'; //TODO: we need to change this to localhost, NOTE: zippi behaves differently for localhost calls`

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
- **Line 220**: `// TODO: Code issue identified. searching by 24hour period rather than everything within the day`

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

### 📋 TODO Items (25+)
- **Infrastructure**: AWS CDK setup, Fargate services, ALB configuration
- **Features**: Missing functionality implementations
- **Configuration**: Environment-specific settings
- **Testing**: Mock objects and test improvements
- **Refactoring**: Document.java utilities, AllFiles.java S3/Salesforce integration

### 🔨 HACK Items (20+)
- **Authentication**: Demo authentication hacks in zippi security filters
- **Authentication**: Temporary auth cookie solutions in agents
- **Configuration**: Server URL and settings workarounds
- **API**: Header and proxy implementations
- **Logging**: Logger configuration workarounds
- **Browser Compatibility**: JavaScript date handling hacks

### 🐛 BUG Items (15+)
- **Legacy Bugs**: Multiple workarounds in zippi SnippetRepositoryImpl
- **Data Processing**: WddataHolder tag name processing issues
- **Salesforce Integration**: SF bug workarounds

### 🔧 FIXME Items (30+)
- **Third-party Libraries**: Issues in forge.bundle.js, jQuery libraries
- **UI**: Rendering and performance issues
- **Data Processing**: Search and filtering problems

### 📚 DEPRECATED Items (5+)
- **API Headers**: X-Z-SFUser header usage
- **CSS**: Styling approaches
- **Endpoints**: Legacy API patterns

---

## Action Plan

### Phase 1: Critical Security & Infrastructure (Week 1-2)
1. **zippi**: Remove authentication hacks in JwtAuthenticationFilter and AgentAuthenticationFilter
2. **EMR**: Replace configuration hacks with proper settings
3. **Agents**: Implement proper authentication realm
4. **Gateway**: Migrate away from deprecated headers

### Phase 2: Technical Debt & Features (Week 3-4)
1. **zippi**: Address legacy bug workarounds in SnippetRepositoryImpl
2. **zippi**: Refactor Document.java utility methods and AllFiles.java S3/Salesforce integration
3. **zpaper-sprkz**: Implement environment-specific configuration
4. **userinfo-middleware**: Add CloudWatch logging
5. **zRAG**: Fix function message array support
6. **zippi_testing**: Complete test improvements

### Phase 3: Cleanup & Optimization (Week 5-6)
1. **install-wizard**: Remove debug code
2. **zpaper-commons**: Implement utility improvements
3. **Third-party libraries**: Update and fix FIXME items
4. **Documentation**: Update deprecated API usage

---

## Monitoring & Maintenance

### Regular Scans
- Run comment marker scans monthly
- Track progress on high-priority items
- Monitor for new TODO/HACK additions

### Code Review Guidelines
- Require justification for new HACK comments
- Set deadlines for TODO items
- Flag security-related temporary solutions

### Documentation Updates
- Update this file after each sprint
- Maintain priority classifications
- Track completion status

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
