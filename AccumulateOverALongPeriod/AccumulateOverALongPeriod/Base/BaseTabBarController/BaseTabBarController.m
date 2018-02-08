//
//  BaseTabBarController.m
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/2/8.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import "BaseTabBarController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController



#pragma mark - 处理状态栏

- (BOOL)prefersStatusBarHidden{
    if (self.selectedViewController){
        return self.selectedViewController.prefersStatusBarHidden;
    }else{
        return NO;
    }
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    if (self.selectedViewController){
        return self.selectedViewController.preferredStatusBarStyle;
    }else{
        return UIStatusBarStyleDefault;
    }
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation{
    if (self.selectedViewController){
        return self.selectedViewController.preferredStatusBarUpdateAnimation;
    }else{
        return UIStatusBarAnimationFade;
    }
}

@end
