#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WrapperManager : NSObject

+ (void)loginWithApiPassword:(NSString *)apiPassword
    accountId:(NSString *)accountId
       userId:(NSString *)userId
     userName:(NSString *)userName
        email:(NSString *)email
         host:(NSURL *)host
integratorKey:(NSString *)integratorKey
                  completion:(void(^)(NSObject *_Nullable accountInfo, NSError *_Nullable error))completion;

@end

NS_ASSUME_NONNULL_END
