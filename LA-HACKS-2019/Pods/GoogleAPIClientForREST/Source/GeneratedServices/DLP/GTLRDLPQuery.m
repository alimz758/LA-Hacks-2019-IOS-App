// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Data Loss Prevention (DLP) API (dlp/v2)
// Description:
//   Provides methods for detection, risk analysis, and de-identification of
//   privacy-sensitive fragments in text, images, and Google Cloud Platform
//   storage repositories.
// Documentation:
//   https://cloud.google.com/dlp/docs/

#import "GTLRDLPQuery.h"

#import "GTLRDLPObjects.h"

// ----------------------------------------------------------------------------
// Constants

// type
NSString * const kGTLRDLPTypeDlpJobTypeUnspecified = @"DLP_JOB_TYPE_UNSPECIFIED";
NSString * const kGTLRDLPTypeInspectJob            = @"INSPECT_JOB";
NSString * const kGTLRDLPTypeRiskAnalysisJob       = @"RISK_ANALYSIS_JOB";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRDLPQuery

@dynamic fields;

@end

@implementation GTLRDLPQuery_InfoTypesList

@dynamic filter, languageCode;

+ (instancetype)query {
  NSString *pathURITemplate = @"v2/infoTypes";
  GTLRDLPQuery_InfoTypesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2ListInfoTypesResponse class];
  query.loggingName = @"dlp.infoTypes.list";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsDeidentifyTemplatesCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2CreateDeidentifyTemplateRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/deidentifyTemplates";
  GTLRDLPQuery_OrganizationsDeidentifyTemplatesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2DeidentifyTemplate class];
  query.loggingName = @"dlp.organizations.deidentifyTemplates.create";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsDeidentifyTemplatesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_OrganizationsDeidentifyTemplatesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GoogleProtobufEmpty class];
  query.loggingName = @"dlp.organizations.deidentifyTemplates.delete";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsDeidentifyTemplatesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_OrganizationsDeidentifyTemplatesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2DeidentifyTemplate class];
  query.loggingName = @"dlp.organizations.deidentifyTemplates.get";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsDeidentifyTemplatesList

@dynamic orderBy, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/deidentifyTemplates";
  GTLRDLPQuery_OrganizationsDeidentifyTemplatesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2ListDeidentifyTemplatesResponse class];
  query.loggingName = @"dlp.organizations.deidentifyTemplates.list";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsDeidentifyTemplatesPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_OrganizationsDeidentifyTemplatesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2DeidentifyTemplate class];
  query.loggingName = @"dlp.organizations.deidentifyTemplates.patch";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsInspectTemplatesCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2CreateInspectTemplateRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/inspectTemplates";
  GTLRDLPQuery_OrganizationsInspectTemplatesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2InspectTemplate class];
  query.loggingName = @"dlp.organizations.inspectTemplates.create";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsInspectTemplatesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_OrganizationsInspectTemplatesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GoogleProtobufEmpty class];
  query.loggingName = @"dlp.organizations.inspectTemplates.delete";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsInspectTemplatesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_OrganizationsInspectTemplatesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2InspectTemplate class];
  query.loggingName = @"dlp.organizations.inspectTemplates.get";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsInspectTemplatesList

@dynamic orderBy, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/inspectTemplates";
  GTLRDLPQuery_OrganizationsInspectTemplatesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2ListInspectTemplatesResponse class];
  query.loggingName = @"dlp.organizations.inspectTemplates.list";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsInspectTemplatesPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2UpdateInspectTemplateRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_OrganizationsInspectTemplatesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2InspectTemplate class];
  query.loggingName = @"dlp.organizations.inspectTemplates.patch";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsStoredInfoTypesCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2CreateStoredInfoTypeRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/storedInfoTypes";
  GTLRDLPQuery_OrganizationsStoredInfoTypesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2StoredInfoType class];
  query.loggingName = @"dlp.organizations.storedInfoTypes.create";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsStoredInfoTypesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_OrganizationsStoredInfoTypesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GoogleProtobufEmpty class];
  query.loggingName = @"dlp.organizations.storedInfoTypes.delete";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsStoredInfoTypesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_OrganizationsStoredInfoTypesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2StoredInfoType class];
  query.loggingName = @"dlp.organizations.storedInfoTypes.get";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsStoredInfoTypesList

@dynamic orderBy, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/storedInfoTypes";
  GTLRDLPQuery_OrganizationsStoredInfoTypesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2ListStoredInfoTypesResponse class];
  query.loggingName = @"dlp.organizations.storedInfoTypes.list";
  return query;
}

@end

@implementation GTLRDLPQuery_OrganizationsStoredInfoTypesPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2UpdateStoredInfoTypeRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_OrganizationsStoredInfoTypesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2StoredInfoType class];
  query.loggingName = @"dlp.organizations.storedInfoTypes.patch";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsContentDeidentify

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2DeidentifyContentRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/content:deidentify";
  GTLRDLPQuery_ProjectsContentDeidentify *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2DeidentifyContentResponse class];
  query.loggingName = @"dlp.projects.content.deidentify";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsContentInspect

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2InspectContentRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/content:inspect";
  GTLRDLPQuery_ProjectsContentInspect *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2InspectContentResponse class];
  query.loggingName = @"dlp.projects.content.inspect";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsContentReidentify

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2ReidentifyContentRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/content:reidentify";
  GTLRDLPQuery_ProjectsContentReidentify *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2ReidentifyContentResponse class];
  query.loggingName = @"dlp.projects.content.reidentify";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsDeidentifyTemplatesCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2CreateDeidentifyTemplateRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/deidentifyTemplates";
  GTLRDLPQuery_ProjectsDeidentifyTemplatesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2DeidentifyTemplate class];
  query.loggingName = @"dlp.projects.deidentifyTemplates.create";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsDeidentifyTemplatesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_ProjectsDeidentifyTemplatesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GoogleProtobufEmpty class];
  query.loggingName = @"dlp.projects.deidentifyTemplates.delete";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsDeidentifyTemplatesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_ProjectsDeidentifyTemplatesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2DeidentifyTemplate class];
  query.loggingName = @"dlp.projects.deidentifyTemplates.get";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsDeidentifyTemplatesList

@dynamic orderBy, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/deidentifyTemplates";
  GTLRDLPQuery_ProjectsDeidentifyTemplatesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2ListDeidentifyTemplatesResponse class];
  query.loggingName = @"dlp.projects.deidentifyTemplates.list";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsDeidentifyTemplatesPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_ProjectsDeidentifyTemplatesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2DeidentifyTemplate class];
  query.loggingName = @"dlp.projects.deidentifyTemplates.patch";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsDlpJobsCancel

@dynamic name;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2CancelDlpJobRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}:cancel";
  GTLRDLPQuery_ProjectsDlpJobsCancel *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GoogleProtobufEmpty class];
  query.loggingName = @"dlp.projects.dlpJobs.cancel";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsDlpJobsCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2CreateDlpJobRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/dlpJobs";
  GTLRDLPQuery_ProjectsDlpJobsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2DlpJob class];
  query.loggingName = @"dlp.projects.dlpJobs.create";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsDlpJobsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_ProjectsDlpJobsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GoogleProtobufEmpty class];
  query.loggingName = @"dlp.projects.dlpJobs.delete";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsDlpJobsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_ProjectsDlpJobsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2DlpJob class];
  query.loggingName = @"dlp.projects.dlpJobs.get";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsDlpJobsList

@dynamic filter, orderBy, pageSize, pageToken, parent, type;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/dlpJobs";
  GTLRDLPQuery_ProjectsDlpJobsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2ListDlpJobsResponse class];
  query.loggingName = @"dlp.projects.dlpJobs.list";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsImageRedact

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2RedactImageRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/image:redact";
  GTLRDLPQuery_ProjectsImageRedact *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2RedactImageResponse class];
  query.loggingName = @"dlp.projects.image.redact";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsInspectTemplatesCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2CreateInspectTemplateRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/inspectTemplates";
  GTLRDLPQuery_ProjectsInspectTemplatesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2InspectTemplate class];
  query.loggingName = @"dlp.projects.inspectTemplates.create";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsInspectTemplatesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_ProjectsInspectTemplatesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GoogleProtobufEmpty class];
  query.loggingName = @"dlp.projects.inspectTemplates.delete";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsInspectTemplatesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_ProjectsInspectTemplatesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2InspectTemplate class];
  query.loggingName = @"dlp.projects.inspectTemplates.get";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsInspectTemplatesList

@dynamic orderBy, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/inspectTemplates";
  GTLRDLPQuery_ProjectsInspectTemplatesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2ListInspectTemplatesResponse class];
  query.loggingName = @"dlp.projects.inspectTemplates.list";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsInspectTemplatesPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2UpdateInspectTemplateRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_ProjectsInspectTemplatesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2InspectTemplate class];
  query.loggingName = @"dlp.projects.inspectTemplates.patch";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsJobTriggersCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2CreateJobTriggerRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/jobTriggers";
  GTLRDLPQuery_ProjectsJobTriggersCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2JobTrigger class];
  query.loggingName = @"dlp.projects.jobTriggers.create";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsJobTriggersDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_ProjectsJobTriggersDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GoogleProtobufEmpty class];
  query.loggingName = @"dlp.projects.jobTriggers.delete";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsJobTriggersGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_ProjectsJobTriggersGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2JobTrigger class];
  query.loggingName = @"dlp.projects.jobTriggers.get";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsJobTriggersList

@dynamic orderBy, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/jobTriggers";
  GTLRDLPQuery_ProjectsJobTriggersList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2ListJobTriggersResponse class];
  query.loggingName = @"dlp.projects.jobTriggers.list";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsJobTriggersPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2UpdateJobTriggerRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_ProjectsJobTriggersPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2JobTrigger class];
  query.loggingName = @"dlp.projects.jobTriggers.patch";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsStoredInfoTypesCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2CreateStoredInfoTypeRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/storedInfoTypes";
  GTLRDLPQuery_ProjectsStoredInfoTypesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2StoredInfoType class];
  query.loggingName = @"dlp.projects.storedInfoTypes.create";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsStoredInfoTypesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_ProjectsStoredInfoTypesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GoogleProtobufEmpty class];
  query.loggingName = @"dlp.projects.storedInfoTypes.delete";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsStoredInfoTypesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_ProjectsStoredInfoTypesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2StoredInfoType class];
  query.loggingName = @"dlp.projects.storedInfoTypes.get";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsStoredInfoTypesList

@dynamic orderBy, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/storedInfoTypes";
  GTLRDLPQuery_ProjectsStoredInfoTypesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2ListStoredInfoTypesResponse class];
  query.loggingName = @"dlp.projects.storedInfoTypes.list";
  return query;
}

@end

@implementation GTLRDLPQuery_ProjectsStoredInfoTypesPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRDLP_GooglePrivacyDlpV2UpdateStoredInfoTypeRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDLPQuery_ProjectsStoredInfoTypesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRDLP_GooglePrivacyDlpV2StoredInfoType class];
  query.loggingName = @"dlp.projects.storedInfoTypes.patch";
  return query;
}

@end