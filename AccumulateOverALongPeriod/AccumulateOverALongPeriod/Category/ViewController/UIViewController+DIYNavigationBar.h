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


@end
