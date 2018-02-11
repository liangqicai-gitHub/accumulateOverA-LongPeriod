//
//  FirstPageTabbarItem.m
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/2/11.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import "FirstPageTabbarItem.h"

@interface FirstPageTabbarItem ()
{
    UIImageView *_imageView;
    UILabel *_llabel;
}

@end


@implementation FirstPageTabbarItem

- (instancetype)init{
    self = [super init];
    if (self){
        [self initVarsAndViews];
    }
    return self;
}

- (void)initVarsAndViews{
    _imageView = [[UIImageView alloc] init];
    [self addSubview:_imageView];
    [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(-8);
        make.centerX.mas_equalTo(0);
    }];
    
    _llabel = [UILabel labelWithTextColor:ConstColorClear font:[UIFont systemFontOfSize:10]];
    [self addSubview:_llabel];
    [_llabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(_imageView.mas_bottom).offset(3);
        make.centerX.mas_equalTo(0);
    }];
}


- (void)setSelected:(BOOL)selected{
    [super setSelected:selected];
    UIImage *image = self.selected ? _selectedImage : _normalImage;
    UIColor *titleColor = self.selected ? _selectedTitleColor : _normalTitleColor;
    
    if (image){
        _imageView.image = image;
    }
    
    if (titleColor){
        _llabel.textColor = titleColor;
    }
}


- (void)setTitle:(NSString *)title{
    _title = [NSString newString:title];
    _llabel.text = title;
}


@end
