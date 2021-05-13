#import "WrapperManager.h"
#import <DocuSignSDK/DocuSignSDK.h>

@implementation WrapperManager

+ (void)loginWithApiPassword:(NSString *)apiPassword
               accountId:(NSString *)accountId
                  userId:(NSString *)userId
                userName:(NSString *)userName
                   email:(NSString *)email
                    host:(NSURL *)host
           integratorKey:(NSString *)integratorKey
                  completion:(void(^)(NSObject *_Nullable accountInfo, NSError *_Nullable error))completion {
    [DSMManager loginWithApiPassword:apiPassword accountId:accountId userId:userId userName:userName email:email host:host integratorKey:integratorKey completion:^(DSMAccountInfo * _Nullable accountInfo, NSError * _Nullable error) {
        NSLog(@"%@", @"Invoked Login Method");
    }];
}

@end
