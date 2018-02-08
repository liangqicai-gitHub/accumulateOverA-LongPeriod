//
//  BaseViewController.m
//  PersonalUse
//
//  Created by 梁齐才 on 2017/11/17.
//  Copyright © 2017年 梁齐才. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self baseBuildTopBar];
}


#pragma mark - diytopBar
- (BOOL)needToBuildTopBar
{
    return YES;
}

- (void)baseBuildTopBar{
    if (!self.needToBuildTopBar) return;
    
    [self diyNavigation_addTopBar];
    self.diyNavigation_topBar.titleLabel.text = self.title;
    
    @weakify(self)
    self.diyNavigation_topBar.backBtn.rac_command = [[RACCommand alloc] initWithSignalBlock:^RACSignal * _Nonnull(id  _Nullable input)
    {
        @strongify(self)
        if (self.navigationController){
            [self.navigationController popViewControllerAnimated:YES];
        }
        return [RACSignal empty];
    }];
}



#pragma mark - slideBack

- (BOOL)canSlideBack
{
    return YES;
}


#pragma mark - StatusBar

- (void)setNeedsStatusBarAppearanceUpdate{
    if (self.tabBarController){
        [self.tabBarController setNeedsStatusBarAppearanceUpdate];
    }else if (self.navigationController){
        [self.navigationController setNeedsStatusBarAppearanceUpdate];
    }else{
        [super setNeedsStatusBarAppearanceUpdate];
    }
}







@end
