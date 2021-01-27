//
//  practiceC.m
//  PracticeProject
//
//  Created by jiajun liu on 2020/8/26.
//  Copyright © 2020 jiajun liu. All rights reserved.
//

#import "practiceC.h"

@interface practiceC ()
@end

@implementation practiceC

- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}


- (void)test
{
    NSLog(@"类方法test1");

}

+ (void) test2
{
    NSLog(@"类方法test2");
}

- (void)print1{
    NSLog(@"执行1");
}

- (void)print2{
    NSLog(@"执行2");
}

@end
