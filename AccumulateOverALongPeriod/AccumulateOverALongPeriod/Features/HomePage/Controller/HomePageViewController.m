//
//  HomePageViewController.m
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/2/8.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import "HomePageViewController.h"
#import "WebPage.h"

@interface HomePageViewController ()

@end

@implementation HomePageViewController

- (NSString *)title{
    return @"首页";
}

- (void)viewDidLoad{
    [super viewDidLoad];
    [self initViews];
}

- (void)initViews{
    //去webPage
    [self initWebPageBtn];
    
}


- (void)initWebPageBtn{
    //去webPage
    UIButton *webPageBtn = [[UIButton alloc] init];
    webPageBtn.backgroundColor = ConstColorOrange1;
    [webPageBtn setTitleColor:ConstColorBlack forState:UIControlStateNormal];
    [webPageBtn setTitle:@"webPage" forState:UIControlStateNormal];
    [self.view addSubview:webPageBtn];
    [webPageBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.diyNavigation_topBar.mas_bottom);
        make.left.mas_equalTo(16);
    }];
    
    @weakify(self)
    webPageBtn.rac_command = [[RACCommand alloc] initWithSignalBlock:^RACSignal * _Nonnull(id  _Nullable input) {
        @strongify(self)
        WebPage *page = [[WebPage alloc] init];
        [self.navigationController pushViewController:page animated:YES];
        return [RACSignal empty];
    }];
}



@end
