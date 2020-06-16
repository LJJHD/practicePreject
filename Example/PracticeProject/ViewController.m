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
@interface ViewController ()
@property (nonatomic, strong) VoiceAnimationView *voiceView;
@property (nonatomic, strong) NSTimer *timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    [Print printLog];
}

- (void)testVoiceAnimation{
    VoiceAnimationView *view = [[VoiceAnimationView alloc]initWithFrame:CGRectMake(100, 100, 200, 100)];
       self.voiceView = view;
       view.itemW = 3;
       view.itemSpace = 2;
       [self.view addSubview:view];
       self.timer = [NSTimer timerWithTimeInterval:0.3f target:self selector:@selector(todo) userInfo:nil repeats:YES];
       [[NSRunLoop currentRunLoop]addTimer:self.timer forMode:NSRunLoopCommonModes];

}

- (void)todo{
    NSUInteger height = arc4random_uniform(255) + 1;
    [self.voiceView updateDecibel:height];
    
    [self.voiceView setNeedsDisplay];
}
@end
