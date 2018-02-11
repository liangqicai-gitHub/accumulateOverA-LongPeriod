//
//  PWDVC.m
//  sdfd
//
//  Created by 梁齐才 on 17/9/15.
//  Copyright © 2017年 梁齐才. All rights reserved.
//

#import "PWDVC.h"


static NSString * const PWDPrefix = @"ls";
static NSString * const PWDSuffix = @"sl";


@interface PWDVC ()
@property (strong, nonatomic)  UITextField *textField;
@property (strong, nonatomic)  UILabel *loginLabel;
@property (strong, nonatomic)  UILabel *payLabel;

@end

@implementation PWDVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initViews];
}


- (NSString *)title{
    return @"aaa";
}

- (void)initViews
{
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.textField = [[UITextField alloc] init];
    self.textField.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.textField];
    [self.textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(90);
        make.left.right.mas_equalTo(0);
        make.height.mas_equalTo(30);
    }];
    
    _loginLabel = [[UILabel alloc] init];
    _payLabel = [[UILabel alloc] init];
    [self.view addSubview:_loginLabel];
    [self.view addSubview:_payLabel];
    [_loginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.textField.mas_bottom);
        make.left.mas_equalTo(16);
    }];
    
    [_payLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.textField.mas_bottom);
        make.right.mas_equalTo(-16);
    }];
    
    
    UIButton *hah = [[UIButton alloc] init];
    hah.backgroundColor = [UIColor redColor];
    [self.view addSubview:hah];
    [hah mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.height.mas_equalTo(50);
        make.top.mas_equalTo(180);
    }];
    [hah addTarget:self action:@selector(ecode:) forControlEvents:UIControlEventTouchUpInside];
    
}



- (void)ecode:(UIButton *)sender
{
    [_textField resignFirstResponder];
    
    NSString *saltedStr = Str_F(@"%@%@%@",PWDPrefix,_textField.text,PWDSuffix);
    
    NSString *md51 = [saltedStr.md5String lowercaseString];
    md51 = [md51 substringToIndex:5];
    NSString *rs = [md51.md5String lowercaseString];
    _loginLabel.text = [rs substringToIndex:4];
    _payLabel.text = [rs substringFromIndex:rs.length - 4];
}






@end
