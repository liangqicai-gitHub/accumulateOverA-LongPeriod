//
//  RootViewController.m
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/2/8.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import "RootViewController.h"
#import "BaseNavigationController.h"
#import "HomePageViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = ConstColorWhite;
    self.tabBar.translucent = YES;
    self.tabBar.hidden = YES;
    [self baseInitControllers];
}


- (void)baseInitControllers{
    //Home
    HomePageViewController *home = [[HomePageViewController alloc] init];
    BaseNavigationController *homeNavigation = [[BaseNavigationController alloc] initWithRootViewController:home];
    [self setViewControllers:@[homeNavigation] animated:NO];
}



@end
