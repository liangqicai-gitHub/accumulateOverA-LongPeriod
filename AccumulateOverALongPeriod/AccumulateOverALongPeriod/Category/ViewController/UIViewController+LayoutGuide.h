//
//  UIViewController+LayoutGuide.h
//  PersonalUse
//
//  Created by 梁齐才 on 2017/11/17.
//  Copyright © 2017年 梁齐才. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MASViewAttribute;
@interface UIViewController (LayoutGuide)

@property (readonly) MASViewAttribute *lqc_topLayoutGuide;
@property (readonly) MASViewAttribute *lqc_bottomLayoutGuide;

@end
