//
//  UILabel+Convenient.h
//  kartor3
//
//  Created by 梁齐才 on 16/11/1.
//  Copyright © 2016年 CST. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Convenient)

/* 
 可以设置 textColor fontSize
 默认设置项：
 lineNumbers = 1；
 textAlignment = NSTextAlignmentLeft
 lineBreakMode = NSLineBreakByTruncatingTail
 backGroudColor = [UIColor cleanColor]
 */
+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                           font:(UIFont *)fontSize;

/*
 可以设置 textColor fontSize lineNumbers
 默认设置项：
 textAlignment = NSTextAlignmentLeft
 lineBreakMode = NSLineBreakByTruncatingTail
 backGroudColor = [UIColor cleanColor]
 */
+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                           font:(UIFont *)fontSize
                    lineNumbers:(NSInteger)lineNumbers;

/*
 可以设置 textColor fontSize lineNumbers textAlignment
 默认设置项：
 lineBreakMode = NSLineBreakByTruncatingTail
 backGroudColor = [UIColor cleanColor]
 */
+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                           font:(UIFont *)fontSize
                    lineNumbers:(NSInteger)lineNumbers
                  textAlignment:(NSTextAlignment)textAlignment;


/*
 可以设置 textColor fontSize lineNumbers textAlignment lineBreakMode
 默认设置项：
 backGroudColor = [UIColor cleanColor]
 */
+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                           font:(UIFont *)fontSize
                    lineNumbers:(NSInteger)lineNumbers
                  textAlignment:(NSTextAlignment)textAlignment
                  lineBreakMode:(NSLineBreakMode)lineBreakMode;

/*
 可以设置 textColor fontSize lineNumbers textAlignment lineBreakMode backGroudColor
 */
+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                           font:(UIFont *)fontSize
                    lineNumbers:(NSInteger)lineNumbers
                  textAlignment:(NSTextAlignment)textAlignment
                  lineBreakMode:(NSLineBreakMode)lineBreakMode
                 backGroudColor:(UIColor *)backGroudColor;




//设置text 如果为空，则用 @""
- (void)LQC_setText:(NSString *)text;

//设置text 如果为空，则用 @" " 站位
- (void)LQC_setTextNotNull:(NSString *)text;

@end
