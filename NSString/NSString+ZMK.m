//
//  NSString+ZMK.m
//  AFNetworking
//
//  Created by laixian on 2019/6/19.
//

#import "NSString+ZMK.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSString (ZMK)
//md5
- (NSString *)MD5
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(data.bytes, (CC_LONG)data.length, result);
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

- (NSDictionary *)zmkToDic
{
      NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
      NSError *err;
      NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                          options:NSJSONReadingMutableContainers
                                                            error:&err];
      if(err) return nil;
      return dic;
}

- (NSString *)zmk_urlEncoding {
    
    NSMutableCharacterSet *allowedCharacterSet = [NSMutableCharacterSet characterSetWithCharactersInString:@"\"%<>[\]^`{|} "].invertedSet;
    return [self stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacterSet];
}

- (NSString *)zmkBase64Encoding
{
    NSData *data =[self dataUsingEncoding:NSUTF8StringEncoding];
    return [data base64EncodedStringWithOptions:0];
}

- (NSString *)zmkBase64Decoding
{
    NSData *data=[[NSData alloc]initWithBase64EncodedString:self options:0];
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}

+ (NSString *)noSensitivePhoneStr:(id)str {
    
    NSString *ID = zmk_noBadString(str);
    
    if (ID.length > 4) {
        
        ID = [ID stringByReplacingCharactersInRange:NSMakeRange(0, ID.length - 4) withString:@"*******"];
    }
    return ID;
}

+ (NSString *)noSensitivePhoneNum:(int64_t)num {
    
    return [self noSensitivePhoneStr:@(num)];
    
}
@end
