//
//  UIView+Border.m
//  RiceDonate
//
//  Created by 梁齐才 on 17/6/12.
//  Copyright © 2017年 ricedonate. All rights reserved.
//

#import "UIView+Border.h"


@implementation UIView (Border)


- (void)setBorderWidth:(CGFloat)width
                corner:(CGFloat)corner
           borderColor:(UIColor *)color
{
    self.layer.cornerRadius = corner;
    self.layer.borderWidth = width;
    self.layer.borderColor = color.CGColor;
    self.layer.masksToBounds = YES;
}





@end
