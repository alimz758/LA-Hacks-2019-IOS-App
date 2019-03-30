// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Video Intelligence API (videointelligence/v1)
// Description:
//   Detects objects, explicit content, and scene changes in videos. It also
//   specifies the region for annotation and transcribes speech to text.
// Documentation:
//   https://cloud.google.com/video-intelligence/docs/

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRCloudVideoIntelligence_GoogleCloudVideointelligenceV1AnnotateVideoRequest;
@class GTLRCloudVideoIntelligence_GoogleLongrunningCancelOperationRequest;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other Cloud Video Intelligence query classes.
 */
@interface GTLRCloudVideoIntelligenceQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Starts asynchronous cancellation on a long-running operation. The server
 *  makes a best effort to cancel the operation, but success is not
 *  guaranteed. If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`. Clients can use
 *  Operations.GetOperation or
 *  other methods to check whether the cancellation succeeded or whether the
 *  operation completed despite cancellation. On successful cancellation,
 *  the operation is not deleted; instead, it becomes an operation with
 *  an Operation.error value with a google.rpc.Status.code of 1,
 *  corresponding to `Code.CANCELLED`.
 *
 *  Method: videointelligence.operations.cancel
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudVideoIntelligenceCloudPlatform
 */
@interface GTLRCloudVideoIntelligenceQuery_OperationsCancel : GTLRCloudVideoIntelligenceQuery
// Previous library name was
//   +[GTLQueryCloudVideoIntelligence queryForOperationsCancelWithObject:name:]

/** The name of the operation resource to be cancelled. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRCloudVideoIntelligence_GoogleProtobufEmpty.
 *
 *  Starts asynchronous cancellation on a long-running operation. The server
 *  makes a best effort to cancel the operation, but success is not
 *  guaranteed. If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`. Clients can use
 *  Operations.GetOperation or
 *  other methods to check whether the cancellation succeeded or whether the
 *  operation completed despite cancellation. On successful cancellation,
 *  the operation is not deleted; instead, it becomes an operation with
 *  an Operation.error value with a google.rpc.Status.code of 1,
 *  corresponding to `Code.CANCELLED`.
 *
 *  @param object The @c
 *    GTLRCloudVideoIntelligence_GoogleLongrunningCancelOperationRequest to
 *    include in the query.
 *  @param name The name of the operation resource to be cancelled.
 *
 *  @return GTLRCloudVideoIntelligenceQuery_OperationsCancel
 */
+ (instancetype)queryWithObject:(GTLRCloudVideoIntelligence_GoogleLongrunningCancelOperationRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Deletes a long-running operation. This method indicates that the client is
 *  no longer interested in the operation result. It does not cancel the
 *  operation. If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`.
 *
 *  Method: videointelligence.operations.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudVideoIntelligenceCloudPlatform
 */
@interface GTLRCloudVideoIntelligenceQuery_OperationsDelete : GTLRCloudVideoIntelligenceQuery
// Previous library name was
//   +[GTLQueryCloudVideoIntelligence queryForOperationsDeleteWithname:]

/** The name of the operation resource to be deleted. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRCloudVideoIntelligence_GoogleProtobufEmpty.
 *
 *  Deletes a long-running operation. This method indicates that the client is
 *  no longer interested in the operation result. It does not cancel the
 *  operation. If the server doesn't support this method, it returns
 *  `google.rpc.Code.UNIMPLEMENTED`.
 *
 *  @param name The name of the operation resource to be deleted.
 *
 *  @return GTLRCloudVideoIntelligenceQuery_OperationsDelete
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Gets the latest state of a long-running operation. Clients can use this
 *  method to poll the operation result at intervals as recommended by the API
 *  service.
 *
 *  Method: videointelligence.operations.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudVideoIntelligenceCloudPlatform
 */
@interface GTLRCloudVideoIntelligenceQuery_OperationsGet : GTLRCloudVideoIntelligenceQuery
// Previous library name was
//   +[GTLQueryCloudVideoIntelligence queryForOperationsGetWithname:]

/** The name of the operation resource. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRCloudVideoIntelligence_GoogleLongrunningOperation.
 *
 *  Gets the latest state of a long-running operation. Clients can use this
 *  method to poll the operation result at intervals as recommended by the API
 *  service.
 *
 *  @param name The name of the operation resource.
 *
 *  @return GTLRCloudVideoIntelligenceQuery_OperationsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists operations that match the specified filter in the request. If the
 *  server doesn't support this method, it returns `UNIMPLEMENTED`.
 *  NOTE: the `name` binding allows API services to override the binding
 *  to use different resource name schemes, such as `users/ * /operations`. To
 *  override the binding, API services can add a binding such as
 *  `"/v1/{name=users/ *}/operations"` to their service configuration.
 *  For backwards compatibility, the default name includes the operations
 *  collection id, however overriding users must ensure the name binding
 *  is the parent resource, without the operations collection id.
 *
 *  Method: videointelligence.operations.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudVideoIntelligenceCloudPlatform
 */
@interface GTLRCloudVideoIntelligenceQuery_OperationsList : GTLRCloudVideoIntelligenceQuery
// Previous library name was
//   +[GTLQueryCloudVideoIntelligence queryForOperationsList]

/** The standard list filter. */
@property(nonatomic, copy, nullable) NSString *filter;

/** The name of the operation's parent resource. */
@property(nonatomic, copy, nullable) NSString *name;

/** The standard list page size. */
@property(nonatomic, assign) NSInteger pageSize;

/** The standard list page token. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c
 *  GTLRCloudVideoIntelligence_GoogleLongrunningListOperationsResponse.
 *
 *  Lists operations that match the specified filter in the request. If the
 *  server doesn't support this method, it returns `UNIMPLEMENTED`.
 *  NOTE: the `name` binding allows API services to override the binding
 *  to use different resource name schemes, such as `users/ * /operations`. To
 *  override the binding, API services can add a binding such as
 *  `"/v1/{name=users/ *}/operations"` to their service configuration.
 *  For backwards compatibility, the default name includes the operations
 *  collection id, however overriding users must ensure the name binding
 *  is the parent resource, without the operations collection id.
 *
 *  @return GTLRCloudVideoIntelligenceQuery_OperationsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)query;

@end

/**
 *  Performs asynchronous video annotation. Progress and results can be
 *  retrieved through the `google.longrunning.Operations` interface.
 *  `Operation.metadata` contains `AnnotateVideoProgress` (progress).
 *  `Operation.response` contains `AnnotateVideoResponse` (results).
 *
 *  Method: videointelligence.videos.annotate
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeCloudVideoIntelligenceCloudPlatform
 */
@interface GTLRCloudVideoIntelligenceQuery_VideosAnnotate : GTLRCloudVideoIntelligenceQuery
// Previous library name was
//   +[GTLQueryCloudVideoIntelligence queryForVideosAnnotateWithObject:]

/**
 *  Fetches a @c GTLRCloudVideoIntelligence_GoogleLongrunningOperation.
 *
 *  Performs asynchronous video annotation. Progress and results can be
 *  retrieved through the `google.longrunning.Operations` interface.
 *  `Operation.metadata` contains `AnnotateVideoProgress` (progress).
 *  `Operation.response` contains `AnnotateVideoResponse` (results).
 *
 *  @param object The @c
 *    GTLRCloudVideoIntelligence_GoogleCloudVideointelligenceV1AnnotateVideoRequest
 *    to include in the query.
 *
 *  @return GTLRCloudVideoIntelligenceQuery_VideosAnnotate
 */
+ (instancetype)queryWithObject:(GTLRCloudVideoIntelligence_GoogleCloudVideointelligenceV1AnnotateVideoRequest *)object;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop