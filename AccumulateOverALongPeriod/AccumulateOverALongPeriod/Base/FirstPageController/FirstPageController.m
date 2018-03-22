//
//  FirstPageController.m
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/2/8.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import "FirstPageController.h"
#import "FirstPageTabbar.h"

@interface FirstPageController ()




@end

@implementation FirstPageController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.diyNavigation_topBar.backBtn removeFromSuperview];
    [self initDiyTabbar];
}


- (void)initDiyTabbar{
    _diyTabbar = [[FirstPageTabbar alloc] init];
    [self.view addSubview:_diyTabbar];
    [_diyTabbar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.left.right.mas_equalTo(0);
        make.top.mas_equalTo(self.lqc_bottomLayoutGuide).offset([FirstPageTabbar exceptContentHeight] * -1.0);
    }];
    
    @weakify(self)
    [RACObserve(self.tabBarController, selectedIndex) subscribeNext:^(id  _Nullable x) {
        @strongify(self)
        if ([x integerValue] != self.diyTabbar.selectedIndex){
            [self.diyTabbar resetSelectedIndex:[x integerValue]];
        }
    }];
    
    _diyTabbar.actionBlock = ^(FirstPageTabbar *view, NSInteger selectIndex) {
        @strongify(self)
        self.tabBarController.selectedIndex = selectIndex;
    };
}


@end
