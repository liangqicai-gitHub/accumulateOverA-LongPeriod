//
//  Constanct.m
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/2/7.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import "Constanct.h"

NSString *const ConstNoti = @"constNoti";

@implementation Constanct


+ (instancetype)sharedConstant{
    static Constanct *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[Constanct alloc] init];
    });
    return instance;
}


- (instancetype)init{
    self = [super init];
    if (self){
        [self initVars];
    }
    return self;
}


- (void)initVars{
    
    _deviceScale = [UIScreen mainScreen].scale;
    _onePix = 1.0 / (double)_deviceScale;
    CGSize deviceScreen = [UIScreen mainScreen].bounds.size;
    _deviceWidth = MIN(deviceScreen.height, deviceScreen.width);
    _deviceHeight = MAX(deviceScreen.height, deviceScreen.width);
    
    _colorClear = [UIColor clearColor];
    _colorWhite = [UIColor whiteColor];
    _colorBlack = [UIColor blackColor];
    _colorOrange1 = HexRGB(0xff5722);
    _colorOrange2 = HexRGB(0x795548);
 
}




@end
