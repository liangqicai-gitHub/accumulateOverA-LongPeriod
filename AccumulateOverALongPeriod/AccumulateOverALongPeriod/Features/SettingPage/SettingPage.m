//
//  SettingPage.m
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/2/11.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import "SettingPage.h"
#import "PWDVC.h"

@interface SettingPage ()
{
    NSInteger _pwdClickCount;
}

@end

@implementation SettingPage

- (void)viewDidLoad {
    [super viewDidLoad];
    [self buildPWD];
}

- (NSString *)title{
    return @"设置";
}



//密码项目
- (void)buildPWD{
    UIButton *btn = [[UIButton alloc] init];
    [btn setTitle:@"111" forState:UIControlStateNormal];
    [btn setTitleColor:ConstColorBlack forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.diyNavigation_topBar.mas_bottom);
        make.right.mas_equalTo(0);
    }];
    
    @weakify(self)
    btn.rac_command = [[RACCommand alloc] initWithSignalBlock:^RACSignal * _Nonnull(id  _Nullable input) {
        @strongify(self)
        _pwdClickCount ++;
        if (_pwdClickCount % 3 == 0){
            PWDVC *vc = [[PWDVC alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
        return [RACSignal empty];
    }];
}


@end
