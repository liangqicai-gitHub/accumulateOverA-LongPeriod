//
//  UIView+SeparateLine.h
//  kartor3
//
//  Created by 梁齐才 on 16/8/9.
//  Copyright © 2016年 CST. All rights reserved.
//

#import <UIKit/UIKit.h>
/*
 1、希望项目中从5.0之后，任何分割线，用这个分类来处理
 2、反复调用这些分类方法，不会给view重复添加line，不用担心tableView的重用带来的line无限添加的尴尬
 3、通常，调用
 - (void)drawTopLine:(CGFloat)left right:(CGFloat)right;
 - (void)drawBottomLine:(CGFloat)left right:(CGFloat)left;
    就能满足需求，
 在某些情况，你可能希望调用来控制一些预期之外的长度
 - (void)drawTopLine:(CGFloat)left width:(CGFloat)width;
 - (void)drawBottomLine:(CGFloat)left width:(CGFloat)width;
 */


@interface UIView (SeparateLine)

/*
 right 是指这条分割线离view的右边的边距
 left  是指这条分割线离view的左边的边距
 width 是指这条分割线离的绝对长度
 
 调用下面四个方法，内部实现方式是：

 如果没有这条分割线，就创建这条分割线。并且将其设置为你要求的一个边距和长度
 如果已经有该条分割线，则直接将该条分割线设置为你要求的一个边距和长度
 */

- (void)drawTopLine:(CGFloat)left right:(CGFloat)right;

- (void)drawBottomLine:(CGFloat)left right:(CGFloat)right;

- (void)drawTopLine:(CGFloat)left width:(CGFloat)width;

- (void)drawBottomLine:(CGFloat)left width:(CGFloat)width;


/*
 如果有一组连续cell，
 总数为N个 (N >= 1)
 如果你采用以下方法来处理分割线：
 
 第 n = (0)    cell 顶部分割线显示（left = 0 ； right = 0），底部显示（left = X ；right = 0）
 第 n = (N-2)  cell 顶部分割线隐藏，底部显示（left = X ；right = 0）
 第 n = (N-1)  cell 顶部分割线隐藏，底部显示（left = 0 ；right = 0）
 
 那么你可以用一个较为便捷的方式
 
 index            ：对应上述规律表达式中的  n (0 <= n <= N -1)
 totalRows        ：对应上述规律表达式中的  N (N >= 1)
 bottomLeftMargin ：对应上述规律表达式中的  X (X >= 0)
 */

- (void)drawSeparateLinesWithSelfIndex:(NSInteger)index
                             totalRows:(NSInteger)totalRows
                      bottomLeftMargin:(CGFloat)bottomLeftMargin;

/*
 出于一些需求，你需要控制分割线的长度，这个时候可以使用下面这个API，实现方式和上面类似
 */
- (void)drawSeparateLinesWithSelfIndex:(NSInteger)index
                             totalRows:(NSInteger)totalRows
                      bottomLeftMargin:(CGFloat)bottomLeftMargin
                                 width:(CGFloat)fullWidth;

/*
 控制显示和隐藏
 */

- (void)topLineHidden:(BOOL)hidden;

- (void)bottomLineHidden:(BOOL)hidden;

@end
