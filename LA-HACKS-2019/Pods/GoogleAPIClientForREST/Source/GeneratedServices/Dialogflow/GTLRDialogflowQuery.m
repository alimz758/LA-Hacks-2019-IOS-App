// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Dialogflow API (dialogflow/v2)
// Description:
//   Builds conversational interfaces (for example, chatbots, and voice-powered
//   apps and devices).
// Documentation:
//   https://cloud.google.com/dialogflow-enterprise/

#import "GTLRDialogflowQuery.h"

#import "GTLRDialogflowObjects.h"

// ----------------------------------------------------------------------------
// Constants

// intentView
NSString * const kGTLRDialogflowIntentViewIntentViewFull       = @"INTENT_VIEW_FULL";
NSString * const kGTLRDialogflowIntentViewIntentViewUnspecified = @"INTENT_VIEW_UNSPECIFIED";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRDialogflowQuery

@dynamic fields;

@end

@implementation GTLRDialogflowQuery_ProjectsAgentEntityTypesBatchDelete

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/entityTypes:batchDelete";
  GTLRDialogflowQuery_ProjectsAgentEntityTypesBatchDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleLongrunningOperation class];
  query.loggingName = @"dialogflow.projects.agent.entityTypes.batchDelete";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentEntityTypesBatchUpdate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/entityTypes:batchUpdate";
  GTLRDialogflowQuery_ProjectsAgentEntityTypesBatchUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleLongrunningOperation class];
  query.loggingName = @"dialogflow.projects.agent.entityTypes.batchUpdate";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentEntityTypesCreate

@dynamic languageCode, parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2EntityType *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/entityTypes";
  GTLRDialogflowQuery_ProjectsAgentEntityTypesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2EntityType class];
  query.loggingName = @"dialogflow.projects.agent.entityTypes.create";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentEntityTypesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDialogflowQuery_ProjectsAgentEntityTypesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDialogflow_GoogleProtobufEmpty class];
  query.loggingName = @"dialogflow.projects.agent.entityTypes.delete";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentEntityTypesEntitiesBatchCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2BatchCreateEntitiesRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/entities:batchCreate";
  GTLRDialogflowQuery_ProjectsAgentEntityTypesEntitiesBatchCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleLongrunningOperation class];
  query.loggingName = @"dialogflow.projects.agent.entityTypes.entities.batchCreate";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentEntityTypesEntitiesBatchDelete

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2BatchDeleteEntitiesRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/entities:batchDelete";
  GTLRDialogflowQuery_ProjectsAgentEntityTypesEntitiesBatchDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleLongrunningOperation class];
  query.loggingName = @"dialogflow.projects.agent.entityTypes.entities.batchDelete";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentEntityTypesEntitiesBatchUpdate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2BatchUpdateEntitiesRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/entities:batchUpdate";
  GTLRDialogflowQuery_ProjectsAgentEntityTypesEntitiesBatchUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleLongrunningOperation class];
  query.loggingName = @"dialogflow.projects.agent.entityTypes.entities.batchUpdate";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentEntityTypesGet

@dynamic languageCode, name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDialogflowQuery_ProjectsAgentEntityTypesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2EntityType class];
  query.loggingName = @"dialogflow.projects.agent.entityTypes.get";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentEntityTypesList

@dynamic languageCode, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/entityTypes";
  GTLRDialogflowQuery_ProjectsAgentEntityTypesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2ListEntityTypesResponse class];
  query.loggingName = @"dialogflow.projects.agent.entityTypes.list";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentEntityTypesPatch

@dynamic languageCode, name, updateMask;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2EntityType *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDialogflowQuery_ProjectsAgentEntityTypesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2EntityType class];
  query.loggingName = @"dialogflow.projects.agent.entityTypes.patch";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentExport

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2ExportAgentRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/agent:export";
  GTLRDialogflowQuery_ProjectsAgentExport *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleLongrunningOperation class];
  query.loggingName = @"dialogflow.projects.agent.export";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentImport

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2ImportAgentRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/agent:import";
  GTLRDialogflowQuery_ProjectsAgentImport *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleLongrunningOperation class];
  query.loggingName = @"dialogflow.projects.agent.import";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentIntentsBatchDelete

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2BatchDeleteIntentsRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/intents:batchDelete";
  GTLRDialogflowQuery_ProjectsAgentIntentsBatchDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleLongrunningOperation class];
  query.loggingName = @"dialogflow.projects.agent.intents.batchDelete";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentIntentsBatchUpdate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2BatchUpdateIntentsRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/intents:batchUpdate";
  GTLRDialogflowQuery_ProjectsAgentIntentsBatchUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleLongrunningOperation class];
  query.loggingName = @"dialogflow.projects.agent.intents.batchUpdate";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentIntentsCreate

@dynamic intentView, languageCode, parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2Intent *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/intents";
  GTLRDialogflowQuery_ProjectsAgentIntentsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2Intent class];
  query.loggingName = @"dialogflow.projects.agent.intents.create";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentIntentsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDialogflowQuery_ProjectsAgentIntentsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDialogflow_GoogleProtobufEmpty class];
  query.loggingName = @"dialogflow.projects.agent.intents.delete";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentIntentsGet

@dynamic intentView, languageCode, name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDialogflowQuery_ProjectsAgentIntentsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2Intent class];
  query.loggingName = @"dialogflow.projects.agent.intents.get";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentIntentsList

@dynamic intentView, languageCode, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/intents";
  GTLRDialogflowQuery_ProjectsAgentIntentsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2ListIntentsResponse class];
  query.loggingName = @"dialogflow.projects.agent.intents.list";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentIntentsPatch

@dynamic intentView, languageCode, name, updateMask;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2Intent *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDialogflowQuery_ProjectsAgentIntentsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2Intent class];
  query.loggingName = @"dialogflow.projects.agent.intents.patch";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentRestore

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2RestoreAgentRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/agent:restore";
  GTLRDialogflowQuery_ProjectsAgentRestore *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleLongrunningOperation class];
  query.loggingName = @"dialogflow.projects.agent.restore";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentSearch

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/agent:search";
  GTLRDialogflowQuery_ProjectsAgentSearch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2SearchAgentsResponse class];
  query.loggingName = @"dialogflow.projects.agent.search";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentSessionsContextsCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2Context *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/contexts";
  GTLRDialogflowQuery_ProjectsAgentSessionsContextsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2Context class];
  query.loggingName = @"dialogflow.projects.agent.sessions.contexts.create";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentSessionsContextsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDialogflowQuery_ProjectsAgentSessionsContextsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDialogflow_GoogleProtobufEmpty class];
  query.loggingName = @"dialogflow.projects.agent.sessions.contexts.delete";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentSessionsContextsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDialogflowQuery_ProjectsAgentSessionsContextsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2Context class];
  query.loggingName = @"dialogflow.projects.agent.sessions.contexts.get";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentSessionsContextsList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/contexts";
  GTLRDialogflowQuery_ProjectsAgentSessionsContextsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2ListContextsResponse class];
  query.loggingName = @"dialogflow.projects.agent.sessions.contexts.list";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentSessionsContextsPatch

@dynamic name, updateMask;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2Context *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDialogflowQuery_ProjectsAgentSessionsContextsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2Context class];
  query.loggingName = @"dialogflow.projects.agent.sessions.contexts.patch";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentSessionsDeleteContexts

@dynamic parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/contexts";
  GTLRDialogflowQuery_ProjectsAgentSessionsDeleteContexts *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleProtobufEmpty class];
  query.loggingName = @"dialogflow.projects.agent.sessions.deleteContexts";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentSessionsDetectIntent

@dynamic session;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2DetectIntentRequest *)object
                        session:(NSString *)session {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"session" ];
  NSString *pathURITemplate = @"v2/{+session}:detectIntent";
  GTLRDialogflowQuery_ProjectsAgentSessionsDetectIntent *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.session = session;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2DetectIntentResponse class];
  query.loggingName = @"dialogflow.projects.agent.sessions.detectIntent";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentSessionsEntityTypesCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2SessionEntityType *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/entityTypes";
  GTLRDialogflowQuery_ProjectsAgentSessionsEntityTypesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2SessionEntityType class];
  query.loggingName = @"dialogflow.projects.agent.sessions.entityTypes.create";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentSessionsEntityTypesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDialogflowQuery_ProjectsAgentSessionsEntityTypesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDialogflow_GoogleProtobufEmpty class];
  query.loggingName = @"dialogflow.projects.agent.sessions.entityTypes.delete";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentSessionsEntityTypesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDialogflowQuery_ProjectsAgentSessionsEntityTypesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2SessionEntityType class];
  query.loggingName = @"dialogflow.projects.agent.sessions.entityTypes.get";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentSessionsEntityTypesList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/entityTypes";
  GTLRDialogflowQuery_ProjectsAgentSessionsEntityTypesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2ListSessionEntityTypesResponse class];
  query.loggingName = @"dialogflow.projects.agent.sessions.entityTypes.list";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentSessionsEntityTypesPatch

@dynamic name, updateMask;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2SessionEntityType *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDialogflowQuery_ProjectsAgentSessionsEntityTypesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2SessionEntityType class];
  query.loggingName = @"dialogflow.projects.agent.sessions.entityTypes.patch";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsAgentTrain

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRDialogflow_GoogleCloudDialogflowV2TrainAgentRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/agent:train";
  GTLRDialogflowQuery_ProjectsAgentTrain *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleLongrunningOperation class];
  query.loggingName = @"dialogflow.projects.agent.train";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsGetAgent

@dynamic parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v2/{+parent}/agent";
  GTLRDialogflowQuery_ProjectsGetAgent *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRDialogflow_GoogleCloudDialogflowV2Agent class];
  query.loggingName = @"dialogflow.projects.getAgent";
  return query;
}

@end

@implementation GTLRDialogflowQuery_ProjectsOperationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v2/{+name}";
  GTLRDialogflowQuery_ProjectsOperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRDialogflow_GoogleLongrunningOperation class];
  query.loggingName = @"dialogflow.projects.operations.get";
  return query;
}

@end