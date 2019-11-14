//
//  NSString+ZMK.h
//  AFNetworking
//
//  Created by laixian on 2019/6/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (ZMK)

- (NSString *)MD5;
- (NSString *)zmkBase64Encoding;
- (NSString *)zmkBase64Decoding;
- (NSDictionary *)zmkToDic;

- (NSString *)zmk_urlEncoding;


/**
 脱敏手机号使用，只保留后4位前面填充*****

 @param str 适用于nsnumber nsstring类型的str
 @return 脱敏的字符串
 */
+ (NSString *)noSensitivePhoneStr:(id)str;

/**
 脱敏手机号使用，只保留后4位前面填充*****

 @param num long long 类型的num
 @return 脱敏的字符串
 */
+ (NSString *)noSensitivePhoneNum:(int64_t)num;

@end

static inline NSString* zmk_noBadString(NSString *string) {
    
    if (string) {
        if ([string isKindOfClass:[NSNull class]]) {
            return @"";
        } else if (![string isKindOfClass:[NSString class]]) {
            return [NSString stringWithFormat:@"%@",string];
        } else {
            return string;
        }
    } else {
        return @"";
    }
}

static inline BOOL zmk_isBadString(NSString *string) {
    if (string && [string isKindOfClass:[NSString class]]) {
        return NO;
    } else {
        return YES;
    }
}

static inline NSString* zmk_replaceBadString(NSString *string, NSString *replaceString) {
    if (zmk_isBadString(string)) {
        return replaceString;
    } else {
        return string;
    }
}

static inline NSString *sizeDesFromB(CGFloat sizeInB){
    if (sizeInB > 1024 *1024) {
        return [NSString stringWithFormat:@"%.2f M/s",sizeInB/1024/1024];
    }
    return [NSString stringWithFormat:@"%.2f KB/s",sizeInB/1024];
}

NS_ASSUME_NONNULL_END
