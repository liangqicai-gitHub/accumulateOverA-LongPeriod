//
//  FirstPageTabbar.m
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/2/8.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import "FirstPageTabbar.h"
#import "FirstPageTabbarItem.h"

@interface FirstPageTabbar ()
{
    NSArray <FirstPageTabbarItem *>* _items;
    FirstPageTabbarItem *_seletecedItem;
}

@end


@implementation FirstPageTabbar

- (instancetype)init{
    self = [super init];
    if (self){
        [self initVarsAndViews];
    }
    return self;
}

- (void)initVarsAndViews{
    _selectedIndex = NSNotFound;
    UIView *lastOne = nil;
    NSArray *titles = @[@"首页",@"业务",@"设置"];
    NSMutableArray *items = [NSMutableArray arrayWithCapacity:titles.count];
    for (NSInteger i = 0; i < titles.count; i++) {
        FirstPageTabbarItem *item = [[FirstPageTabbarItem alloc] init];
        [items addObject:item];
        NSString *selectedImageName = Str_F(@"tabbar-0%zd-s",i + 1);
        NSString *normalImageName = Str_F(@"tabbar-0%zd-n",i + 1);
        NSString *title = titles[i];
        item.selectedImage = KImg(selectedImageName);
        item.normalImage = KImg(normalImageName);
        item.title = title;
        item.normalTitleColor = [UIColor lightGrayColor];
        item.selectedTitleColor = ConstColorOrange1;
        item.selected = NO;
        item.tag = i;
        [item addTarget:self action:@selector(itemClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.contentView addSubview:item];
        if (lastOne){
            [item mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(lastOne.mas_right);
                make.top.bottom.mas_equalTo(0);
                make.width.mas_equalTo(lastOne.mas_width);
            }];
        }else{
            [item mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(0);
                make.top.bottom.mas_equalTo(0);
            }];
        }
        
        lastOne = item;
        if (i + 1 == titles.count){
            [item mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(0);
            }];
        }
    }
    
    _items = items;
}


- (void)resetSelectedIndex:(NSInteger)index{
    _seletecedItem.selected = NO;
    _seletecedItem = _items[index];
    _seletecedItem.selected = YES;
    _selectedIndex = index;
}

- (void)itemClick:(FirstPageTabbarItem *)sender{
    if (self.actionBlock) self.actionBlock(self, sender.tag);
}


@end
