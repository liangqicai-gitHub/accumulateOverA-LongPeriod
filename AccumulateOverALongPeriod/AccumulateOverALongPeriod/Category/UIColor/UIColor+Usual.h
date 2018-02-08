//
//  UIColor+Usual.h
//  sdfd
//
//  Created by 梁齐才 on 16/5/26.
//  Copyright © 2016年 梁齐才. All rights reserved.
//

#import <UIKit/UIKit.h>

#define RGB(r,g,b)     [UIColor r_int:r g_int:g b_int:b a_f:1.0f]
#define RGBA(r,g,b,a)  [UIColor r_int:r g_int:g b_int:b a_f:a]
#define HexRGB(RGB)    [UIColor colorWithHexRGB:RGB]
#define HexRGBA(RGBA)  [UIColor colorWithHexRGBA:RGBA]

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Usual)

+ (UIColor *)colorWithHexRGB:(NSInteger)RGB;

+ (UIColor *)colorWithHexRGBA:(NSInteger)RGBA;

+ (UIColor *)r_int:(NSInteger )r g_int:(NSInteger )g b_int:(NSInteger )b a_f:(CGFloat)a;

- (UIImage *)pureColorImage;

NS_ASSUME_NONNULL_END

@end
