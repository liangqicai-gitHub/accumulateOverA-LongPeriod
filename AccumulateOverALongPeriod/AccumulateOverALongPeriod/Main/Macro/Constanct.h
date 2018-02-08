//
//  Constanct.h
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/2/7.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import <UIKit/UIKit.h>

//全局自定义通知的量
UIKIT_EXTERN NSString *const ConstNoti;

//CGFloat
#define ConstOnePix [Constanct sharedConstant].onePix
#define ConstDeviceS [Constanct sharedConstant].deviceScale
#define ConstDeviceW [Constanct sharedConstant].deviceWidth
#define ConstDeviceH [Constanct sharedConstant].deviceHeight

//color
#define ConstColorWhite [Constanct sharedConstant].colorWhite
#define ConstColorClear [Constanct sharedConstant].colorClear


@interface Constanct : NSObject

+ (instancetype)sharedConstant;

//CGFloat
@property (readonly) CGFloat onePix;
@property (readonly) CGFloat deviceScale;
@property (readonly) CGFloat deviceWidth;
@property (readonly) CGFloat deviceHeight;

//colcor
@property (readonly) UIColor *colorWhite;
@property (readonly) UIColor *colorClear;


@end