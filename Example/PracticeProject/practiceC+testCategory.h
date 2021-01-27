//
//  practiceC+testCategory.h
//  PracticeProject
//
//  Created by jiajun liu on 2020/9/4.
//  Copyright © 2020 jiajun liu. All rights reserved.
//

#import "practiceC.h"

NS_ASSUME_NONNULL_BEGIN

@protocol practiceCProtocal <NSObject>
- (void)practice1;
+ (void)test2;
@end

@interface practiceC (testCategory)<practiceCProtocal>
@property (nonatomic, copy) NSString *address;
- (void)pPrint;
+ (void)testCategory;
@end

NS_ASSUME_NONNULL_END
