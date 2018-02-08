//
//  BaseNavigationController.m
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/2/8.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import "BaseNavigationController.h"
#import "BaseViewController.h"


@interface BaseNavigationController ()
<UIGestureRecognizerDelegate>

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.hidden = YES;
    self.interactivePopGestureRecognizer.delegate = self;
}


#pragma mark - 滑动返回
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    //是否是root，如果是，则返回NO
    NSArray *controllers = self.viewControllers;
    if ([NSArray isEmpty:controllers]) return NO;
    if (controllers.count == 1) return NO;
    
    UIViewController *top = self.topViewController;
    if (![top isKindOfClass:[BaseViewController class]]) return NO;
    return [(BaseViewController *)top canSlideBack];
}


#pragma mark - 状态栏

- (BOOL)prefersStatusBarHidden{
    if (self.topViewController){
        return self.topViewController.prefersStatusBarHidden;
    }else{
        return NO;
    }
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    if (self.topViewController){
        return self.topViewController.preferredStatusBarStyle;
    }else{
        return UIStatusBarStyleDefault;
    }
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation{
    if (self.topViewController){
        return self.topViewController.preferredStatusBarUpdateAnimation;
    }else{
        return UIStatusBarAnimationFade;
    }
}

- (void)setNeedsStatusBarAppearanceUpdate{
    if (self.tabBarController){
        [self.tabBarController setNeedsStatusBarAppearanceUpdate];
    }else{
        [super setNeedsStatusBarAppearanceUpdate];
    }
}

@end
