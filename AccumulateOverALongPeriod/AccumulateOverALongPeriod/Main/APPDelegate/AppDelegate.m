//
//  AppDelegate.m
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/2/7.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self initRootViewController];
    return YES;
}


- (void)initRootViewController{
    if (!self.window){
        self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    }
    self.window.backgroundColor = ConstColorWhite;
    [self.window makeKeyAndVisible];
    
    UIViewController *root = [[UIViewController alloc] init];
    root.view.backgroundColor = ConstColorWhite;
    self.window.rootViewController = root;
}



@end
