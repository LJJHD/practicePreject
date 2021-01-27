//
//  practiceC.h
//  PracticeProject
//
//  Created by jiajun liu on 2020/8/26.
//  Copyright © 2020 jiajun liu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@protocol protocolA;
@protocol protocolB;
@interface practiceC : NSObject<protocolA,protocolB>
@property (nonatomic, copy) NSString *name;
- (void)test;
@end

@protocol protocolA <NSObject>
- (void)print1;
@end
@protocol protocolB <NSObject>

- (void)print2;
@end
NS_ASSUME_NONNULL_END
