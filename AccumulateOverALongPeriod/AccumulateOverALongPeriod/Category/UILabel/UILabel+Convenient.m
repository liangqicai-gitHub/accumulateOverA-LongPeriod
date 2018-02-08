//
//  UILabel+Convenient.m
//  kartor3
//
//  Created by 梁齐才 on 16/11/1.
//  Copyright © 2016年 CST. All rights reserved.
//

#import "UILabel+Convenient.h"

@implementation UILabel (Convenient)


+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                           font:(UIFont *)fontSize
{
    return [self labelWithTextColor:textColor
                               font:fontSize
                        lineNumbers:1
                      textAlignment:NSTextAlignmentLeft
                      lineBreakMode:NSLineBreakByTruncatingTail
                     backGroudColor:nil];
}

+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                           font:(UIFont *)fontSize
                    lineNumbers:(NSInteger)lineNumbers
{
    return [self labelWithTextColor:textColor
                               font:fontSize
                        lineNumbers:lineNumbers
                      textAlignment:NSTextAlignmentLeft
                      lineBreakMode:NSLineBreakByTruncatingTail
                     backGroudColor:nil];
}

+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                           font:(UIFont *)fontSize
                    lineNumbers:(NSInteger)lineNumbers
                  textAlignment:(NSTextAlignment)textAlignment
{
    return [self labelWithTextColor:textColor
                               font:fontSize
                        lineNumbers:lineNumbers
                      textAlignment:textAlignment
                      lineBreakMode:NSLineBreakByTruncatingTail
                     backGroudColor:nil];
}


+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                           font:(UIFont *)fontSize
                    lineNumbers:(NSInteger)lineNumbers
                  textAlignment:(NSTextAlignment)textAlignment
                  lineBreakMode:(NSLineBreakMode)lineBreakMode
{
    return [self labelWithTextColor:textColor
                               font:fontSize
                        lineNumbers:lineNumbers
                      textAlignment:textAlignment
                      lineBreakMode:lineBreakMode
                     backGroudColor:nil];
}


+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                           font:(UIFont *)fontSize
                    lineNumbers:(NSInteger)lineNumbers
                  textAlignment:(NSTextAlignment)textAlignment
                  lineBreakMode:(NSLineBreakMode)lineBreakMode
                 backGroudColor:(UIColor *)backGroudColor
{
    UILabel *label = [[UILabel alloc] init];
    if ([textColor isKindOfClass:[UIColor class]]){
        label.textColor = textColor;
    }
    
    label.font = fontSize;
    
    if (lineNumbers < 0) lineNumbers = 0;
    label.numberOfLines = lineNumbers;
    
    label.textAlignment = textAlignment;
    
    label.lineBreakMode = lineBreakMode;
    
    if ([backGroudColor isKindOfClass:[UIColor class]]){
        label.backgroundColor = backGroudColor;
    }else{
        label.backgroundColor = [UIColor clearColor];
    }
    
    return label;
}



- (void)LQC_setText:(NSString *)text
{
    if ([text isKindOfClass:[NSString class]]){
        self.text = text;
    }else{
        self.text = @"";
    }
}

- (void)LQC_setTextNotNull:(NSString *)text
{
    if ([text isKindOfClass:[NSString class]]){
        self.text = text.length > 0 ? text : @" ";
    }else{
        self.text = @" ";
    }
}


@end
