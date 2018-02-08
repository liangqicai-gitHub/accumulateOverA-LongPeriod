//
//  UIViewController+DIYNavigationBar.m
//  PersonalUse
//
//  Created by 梁齐才 on 2017/11/17.
//  Copyright © 2017年 梁齐才. All rights reserved.
//

#import "UIViewController+DIYNavigationBar.h"
#import "UIViewController+LayoutGuide.h"
#import <objc/runtime.h>

@implementation UIViewController (DIYNavigationBar)

- (void)diyNavigation_addTopBar
{
    DIYNavigationBar *bar = [[DIYNavigationBar alloc] init];
    bar.backgroundColor = [UIColor colorWithWhite:0.9 alpha:0.9];
    self.diyNavigation_topBar = bar;
    [self.view addSubview:bar];
    [bar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
        make.right.left.mas_equalTo(0);
        make.bottom.mas_equalTo(self.lqc_topLayoutGuide).offset(44.0);
    }];
}



#pragma mark - setter and getter

static char *const diyNavigation_topBar_key = "diyNavigation_topBar_key";

- (void)setDiyNavigation_topBar:(DIYNavigationBar *)diyNavigation_topBar
{
    [self willChangeValueForKey:@"diyNavigation_topBar"];
    objc_setAssociatedObject(self,
                             &diyNavigation_topBar_key,
                             diyNavigation_topBar,
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self didChangeValueForKey:@"diyNavigation_topBar"];
}

- (DIYNavigationBar *)diyNavigation_topBar
{
    return objc_getAssociatedObject(self, &diyNavigation_topBar_key);
}





@end
