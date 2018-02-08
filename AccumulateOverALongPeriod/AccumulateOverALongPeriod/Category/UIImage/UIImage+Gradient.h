//
//  UIImage+Gradient.h
//  btn
//
//  Created by 梁齐才 on 17/4/11.
//  Copyright © 2017年 LYZ. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger,Gradientdirection)  {
    topToBottom = 0,//从上到下
    leftToRight = 1,//从左到右
    upleftTolowRight = 2,//左上到右下
    uprightTolowLeft = 3,//右上到左下
};

@interface UIImage (Gradient)


+ (UIImage *)imageWithColors:(NSArray <UIColor *>*)colors
                        size:(CGSize)size
                   direction:(Gradientdirection)type;


@end
