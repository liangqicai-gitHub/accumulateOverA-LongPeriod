//
//  UIViewController+LayoutGuide.m
//  PersonalUse
//
//  Created by 梁齐才 on 2017/11/17.
//  Copyright © 2017年 梁齐才. All rights reserved.
//

#import "UIViewController+LayoutGuide.h"
#import <Masonry.h>

@implementation UIViewController (LayoutGuide)

- (MASViewAttribute *)lqc_topLayoutGuide{
    if (@available(iOS 11.0, *)){
        return self.view.mas_safeAreaLayoutGuideTop;
    }else{
        return self.mas_topLayoutGuide;
    }
}

- (MASViewAttribute *)lqc_bottomLayoutGuide{
    if (@available(iOS 11.0, *)){
        return self.view.mas_safeAreaLayoutGuideBottom;
    }else{
        return self.mas_bottomLayoutGuide;
    }
}




@end
