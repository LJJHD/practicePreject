//
//  AppDelegate.m
//  PracticeProject
//
//  Created by jiajun liu on 2020/6/5.
//  Copyright © 2020 jiajun liu. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    [self.window makeKeyAndVisible];
    ViewController *viewC = [ViewController new];
    self.window.rootViewController = viewC;
    [ViewController print];
    [viewC print];
    return YES;
}


#pragma mark - UISceneSession lifecycle



@end
