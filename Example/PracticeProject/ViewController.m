//
//  ViewController.m
//  PracticeProject
//
//  Created by jiajun liu on 2020/6/5.
//  Copyright © 2020 jiajun liu. All rights reserved.
//

#import "ViewController.h"
#import <Print.h>
#import "VoiceAnimationView.h"
#import "practiceC.h"
#import <objc/runtime.h>
#import "practiceC+testCategory.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //运行时isa测试
//    self.view.backgroundColor = [UIColor whiteColor];
//    BOOL    res1    =    [(id)[NSObject    class]    isKindOfClass:[NSObject    class]];
//    NSObject *obj =  [NSObject new];
//    BOOL    res2    =    [obj   isMemberOfClass:[NSObject    class]];
//    BOOL    res3    =    [[practiceC    class]    isKindOfClass:[practiceC    class]];
//    BOOL    res4    =    [(id)[practiceC    class]    isMemberOfClass:[practiceC    class]];
//
//    Class cla = object_getClass([self class]);
//    Class cla0 = object_getClass(self);
//
//    Class cla2 = [self class];
}

+ (void)print{
    Class cla = object_getClass(self);

}
- (void)print{
    
}

- (void)testProtocol:(id<protocolA>)objc{
    [objc print1];
}

@end
