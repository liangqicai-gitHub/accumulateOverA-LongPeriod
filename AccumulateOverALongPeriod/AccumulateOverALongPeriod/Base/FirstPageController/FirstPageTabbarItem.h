//
//  FirstPageTabbarItem.h
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/2/11.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstPageTabbarItem : UIControl

@property (nonatomic,strong) UIImage *normalImage;
@property (nonatomic,strong) UIImage *selectedImage;

@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) UIColor *normalTitleColor;
@property (nonatomic,copy) UIColor *selectedTitleColor;

@end
