//
//  NSString+lqcRegular.h
//  MicaLife
//
//  Created by mac on 2019/2/27.
//  Copyright © 2019 HaierMoney. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (lqcRegular)

//正整数  (如果是输入中的，@"" 认为是可以)
+ (NSString *)inputtingPositiveIntegerRegular;
+ (NSString *)positiveIntegerRegular;

//小数点后两位
//+ (NSString *)inputtingDecimal_2;
+ (NSString *)decimal_2;


//手机号码 phone  (如果是输入中的，@"" 认为是可以)
+ (NSString *)inputtingPhoneNumberRegular;
+ (NSString *)phoneNumberRegular;

//电子邮箱的
//+ (NSString *)inputtingEmailRegular;
+ (NSString *)emailRegular;


+ (NSString *)idCardNumberRegular;

+ (NSString *)allChinese;


@end

NS_ASSUME_NONNULL_END
