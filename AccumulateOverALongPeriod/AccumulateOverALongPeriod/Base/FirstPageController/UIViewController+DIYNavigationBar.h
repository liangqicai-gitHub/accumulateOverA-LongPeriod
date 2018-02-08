//
//  UIViewController+DIYNavigationBar.h
//  PersonalUse
//
//  Created by 梁齐才 on 2017/11/17.
//  Copyright © 2017年 梁齐才. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DIYNavigationBar.h"

@interface UIViewController (DIYNavigationBar)

- (void)diyNavigation_addTopBar;

@property (nonatomic,strong) DIYNavigationBar *diyNavigation_topBar;

//请在建立lqc_topBar之后调用，不然无效
@property (nonatomic) NSString *diyNavigation_title;
@property (nonatomic) UIView *diyNavigation_leftView;//请添加好 Width height 的约束
@property (nonatomic) UIView *diyNavigation_rightView;//请添加好 Width height 的约束

@end
