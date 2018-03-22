//
//  HomePageViewController.m
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/2/8.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import "HomePageViewController.h"

@interface HomePageViewController ()

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIWebView *web = [[UIWebView alloc] init];
    [self.view addSubview:web];
    [web setFrame:self.view.bounds];
    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"]]];
}


- (NSString *)title{
    return @"首页";
}


@end
