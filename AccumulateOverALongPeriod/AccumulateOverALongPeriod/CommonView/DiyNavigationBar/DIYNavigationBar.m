//
//  DIYNavigationBar.m
//  PersonalUse
//
//  Created by 梁齐才 on 2017/11/17.
//  Copyright © 2017年 梁齐才. All rights reserved.
//

#import "DIYNavigationBar.h"
#import "UILabel+Convenient.h"

@implementation DIYNavigationBar


- (instancetype)init
{
    self = [super init];
    if (self){
        [self base_initVars];
        [self base_initViews];
    }
    return self;
}

- (void)base_initVars
{
    self.contentView = [[UIView alloc] init];
    _backBtn = [[UIButton alloc] init];
    [_backBtn setBackgroundImage:KImg(@"common-navigation-back") forState:UIControlStateNormal];
    [_backBtn setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    _titleLabel = [UILabel labelWithTextColor:ConstColorBlack font:[UIFont boldSystemFontOfSize:17]];
}

- (void)base_initViews
{
    self.backgroundColor = ConstColorWhite;
    [self addSubview:self.contentView];
    self.contentView.backgroundColor = [UIColor clearColor];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0.0);
        make.height.mas_equalTo(44.0);
        make.bottom.mas_equalTo(0);
    }];
    
    [self.contentView addSubview:_backBtn];
    [_backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(0);
        make.left.mas_equalTo(16);
        make.size.mas_equalTo(CGSizeMake(50, 44));
    }];
    
    [self.contentView addSubview:_titleLabel];
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(CGPointZero);
        make.width.mas_lessThanOrEqualTo(150);
    }];
    
    [self drawBottomLine:0 right:0];
}



@end
