//
//  BaseViewController.h
//  PersonalUse
//
//  Created by 梁齐才 on 2017/11/17.
//  Copyright © 2017年 梁齐才. All rights reserved.
//

#import "UIViewController+LayoutGuide.h"
#import "UIViewController+DIYNavigationBar.h"

@interface BaseViewController : UIViewController

//滑动返回
- (BOOL)canSlideBack;

//topBar
- (BOOL)needToBuildTopBar;

@end
