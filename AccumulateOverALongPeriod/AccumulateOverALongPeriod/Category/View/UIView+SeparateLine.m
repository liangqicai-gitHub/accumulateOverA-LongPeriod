//
//  UIView+SeparateLine.m
//  kartor3
//
//  Created by 梁齐才 on 16/8/9.
//  Copyright © 2016年 CST. All rights reserved.
//

#import "UIView+SeparateLine.h"
#import <objc/runtime.h>


@implementation UIView (SeparateLine)

#pragma mark - public

- (void)drawTopLine:(CGFloat)left right:(CGFloat)right{
    
    [self buildTopLine];
    UIView *topLine = [self sc_TopLine];
    [topLine mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(left);
        make.right.mas_equalTo(right * -1);
        make.height.mas_equalTo(ConstOnePix);
        make.top.mas_equalTo(0);
    }];
}

- (void)drawBottomLine:(CGFloat)left right:(CGFloat)right
{
    [self buildBottomLine];
    
    UIView *bottomLine = [self sc_bottomLine];
    [bottomLine mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(left);
        make.right.mas_equalTo(right * -1);
        make.height.mas_equalTo(ConstOnePix);
        make.bottom.mas_equalTo(0);
    }];
}

- (void)drawTopLine:(CGFloat)left width:(CGFloat)width
{
    [self buildTopLine];
    
    UIView *topLine = [self sc_TopLine];
    [topLine mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(left);
        make.width.mas_equalTo(width);
        make.height.mas_equalTo(ConstOnePix);
        make.top.mas_equalTo(0);
    }];
}

- (void)drawBottomLine:(CGFloat)left width:(CGFloat)width
{
    [self buildBottomLine];
    
    UIView *bottomLine = [self sc_bottomLine];
    [bottomLine mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(left);
        make.width.mas_equalTo(width);
        make.height.mas_equalTo(ConstOnePix);
        make.bottom.mas_equalTo(0);
    }];
}

- (void)drawSeparateLinesWithSelfIndex:(NSInteger)index
                             totalRows:(NSInteger)totalRows
                      bottomLeftMargin:(CGFloat)bottomLeftMargin
{
    if (index < 0 || totalRows < 1 || index > (totalRows - 1)) return;
    if (bottomLeftMargin < 0.0f) bottomLeftMargin = 0.0f;
    
    BOOL first = (index == 0);
    BOOL last = (index == totalRows - 1);
    [self drawTopLine:0 right:0];
    [self topLineHidden:!first];
    CGFloat left = last ? 0 : bottomLeftMargin;
    [self drawBottomLine:left right:0];
    [self bottomLineHidden:NO];
}

- (void)drawSeparateLinesWithSelfIndex:(NSInteger)index
                             totalRows:(NSInteger)totalRows
                      bottomLeftMargin:(CGFloat)bottomLeftMargin
                                 width:(CGFloat)fullWidth
{
    if (index < 0 || totalRows < 1 || index > (totalRows - 1)) return;
    if (bottomLeftMargin < 0.0f) bottomLeftMargin = 0.0f;
    if (fullWidth <= 0) fullWidth = 0.0f;
    
    BOOL first = (index == 0);
    BOOL last = (index == totalRows - 1);
    [self drawTopLine:0 width:fullWidth];
    [self topLineHidden:!first];
    CGFloat left = last ? 0 : bottomLeftMargin;
    [self drawBottomLine:left width:fullWidth - left];
    [self bottomLineHidden:NO];
}

- (void)topLineHidden:(BOOL)hidden
{
    if (![[self sc_TopLine] isKindOfClass:[UIView class]]) return;
    
    UIView *topLine = [self sc_TopLine];
    topLine.hidden = hidden;
    if (!hidden){
        [self bringSubviewToFront:topLine];
    }
}

- (void)bottomLineHidden:(BOOL)hidden
{
    if (![[self sc_bottomLine] isKindOfClass:[UIView class]]) return;
    UIView *bottomLine = [self sc_bottomLine];
    bottomLine.hidden = hidden;
    if (!hidden){
        [self bringSubviewToFront:bottomLine];
    }
}


#pragma mark - privite

- (void)buildTopLine{
    
    if ([[self sc_TopLine] isKindOfClass:[UIView class]]) return;
    
    UIView *topLine = [[UIView alloc] init];
    topLine.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:topLine];
    [self setSc_TopLine:topLine];
}


- (void)buildBottomLine{
    
    if ([[self sc_bottomLine] isKindOfClass:[UIView class]]) return;
    
    UIView *bottomLine = [[UIView alloc] init];
    bottomLine.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:bottomLine];
    [self setSc_bottomLine:bottomLine];
}

#pragma mark - setter and getter

/* topLine's setter and getter   */

static char *const sc_topLineKey = "sc_topLineKey";

- (void)setSc_TopLine:(UIView *)sc_TopLine{
    [self willChangeValueForKey:@"sc_TopLine"];
    objc_setAssociatedObject(self,
                             &sc_topLineKey,
                             sc_TopLine,
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self didChangeValueForKey:@"sc_TopLine"];
}

- (UIView *)sc_TopLine{
    return objc_getAssociatedObject(self, &sc_topLineKey);
}

/* bottomLine's setter and getter   */

static char *const sc_bottomLineKey = "sc_bottomLineKey";

- (void)setSc_bottomLine:(UIView *)sc_bottomLine{
    [self willChangeValueForKey:@"sc_bottomLine"];
    objc_setAssociatedObject(self,
                             &sc_bottomLineKey,
                             sc_bottomLine,
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self didChangeValueForKey:@"sc_bottomLine"];
}

- (UIView *)sc_bottomLine{
    return objc_getAssociatedObject(self,
                                    &sc_bottomLineKey);
}

@end
