//
//  BaseViewController.m
//  PersonalUse
//
//  Created by 梁齐才 on 2017/11/17.
//  Copyright © 2017年 梁齐才. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (BOOL)canSlideBack
{
    return YES;
}

- (BOOL)needToBuildTopBar
{
    return YES;
}



- (void)setNeedsStatusBarAppearanceUpdate{
    if (self.tabBarController){
        [self.tabBarController setNeedsStatusBarAppearanceUpdate];
    }else if (self.navigationController){
        [self.navigationController setNeedsStatusBarAppearanceUpdate];
    }else{
        [super setNeedsStatusBarAppearanceUpdate];
    }
}

@end
