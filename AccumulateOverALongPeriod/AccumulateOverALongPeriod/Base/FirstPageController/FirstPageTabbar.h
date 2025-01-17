//
//  FirstPageTabbar.h
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/2/8.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import "RDDIYBottomBar.h"

@interface FirstPageTabbar : RDDIYBottomBar

@property (nonatomic,copy) void (^actionBlock)(FirstPageTabbar *view,NSInteger selectIndex);

@property (readonly) NSInteger selectedIndex;//NSNotFound
- (void)resetSelectedIndex:(NSInteger)index;

@end
