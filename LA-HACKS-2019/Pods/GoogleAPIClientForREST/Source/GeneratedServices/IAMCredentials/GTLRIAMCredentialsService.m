// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   IAM Service Account Credentials API (iamcredentials/v1)
// Description:
//   Creates short-lived, limited-privilege credentials for IAM service
//   accounts.
// Documentation:
//   https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials

#import "GTLRIAMCredentials.h"

// ----------------------------------------------------------------------------
// Authorization scope

NSString * const kGTLRAuthScopeIAMCredentialsCloudPlatform = @"https://www.googleapis.com/auth/cloud-platform";

// ----------------------------------------------------------------------------
//   GTLRIAMCredentialsService
//

@implementation GTLRIAMCredentialsService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://iamcredentials.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end