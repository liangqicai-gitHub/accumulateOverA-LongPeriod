//
//  WebPage.m
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/4/27.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import "WebPage.h"

@interface WebPage ()
{
    UIWebView *_webView;
}

@end

@implementation WebPage

- (BOOL)needToBuildTopBar{
    return NO;
}

- (NSString *)title{
    return @"";
}

- (void)viewDidLoad{
    [super viewDidLoad];
    [self initVars];
    [self initViews];
}

- (void)initVars{
    _webView = [[UIWebView alloc] init];
    _webView.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
}

- (void)initViews{
    [self.view addSubview:_webView];
    [_webView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsZero);
    }];
    
    NSURL *url = [[NSURL alloc] initWithString:@"http:192.168.2.185"];
    [_webView loadRequest:[NSURLRequest requestWithURL:url]];
}



@end
