//
//  RDDIYBottomBar.m
//  RiceDonate
//
//  Created by 梁齐才 on 2017/12/19.
//  Copyright © 2017年 ricedonate. All rights reserved.
//

#import "RDDIYBottomBar.h"
#import "UIView+SeparateLine.h"

@interface RDDIYBottomBar ()


@end


@implementation RDDIYBottomBar

- (instancetype)init{
    self = [super init];
    if (self){
        [self base_initVars];
        [self base_initViews];
    }
    return self;
}

- (void)base_initVars{
    _contentView = [[UIView alloc] init];
}

- (void)base_initViews{
    self.backgroundColor = ConstColorWhite;
    _contentView.backgroundColor = ConstColorClear;
    [self addSubview:_contentView];
    [_contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.mas_equalTo(0);
        make.height.mas_equalTo([RDDIYBottomBar exceptContentHeight]);
    }];
    [_contentView drawTopLine:0 right:0];
}

+ (CGFloat)exceptContentHeight{
    return 49.0;
}

@end
