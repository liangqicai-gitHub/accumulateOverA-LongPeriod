//
//  NSString+lqcRegular.m
//  MicaLife
//
//  Created by mac on 2019/2/27.
//  Copyright © 2019 HaierMoney. All rights reserved.
//

#import "NSString+lqcRegular.h"

@implementation NSString (lqcRegular)


//正整数  (如果是输入中的，@"" 认为是可以)
+ (NSString *)inputtingPositiveIntegerRegular
{
    return @"^([1-9][0-9]*){0,1}$";
}


+ (NSString *)positiveIntegerRegular
{
    return @"^[1-9][0-9]*$";
}

//小数点后两位
//+ (NSString *)inputtingDecimal_2{
//
//}

+ (NSString *)decimal_2{
    return @"^(([1-9]{1}[0-9]*)|[0]{1})([.][0-9]{0,2}){0,1}$";
}

//手机号码 phone  (如果是输入中的，@"" 认为是可以)
+ (NSString *)inputtingPhoneNumberRegular
{
    return @"^([1][0-9]{0,10}){0,1}$";
}


+ (NSString *)phoneNumberRegular
{
    return @"^[1][0-9]{10}$";
}




//电子邮箱 email 的正则
+ (NSString *)inputtingEmailRegular{
    return @"^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$";
}


+ (NSString *)emailRegular{
    return @"^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$";
}

+ (NSString *)idCardNumberRegular{
    return @"\\d{17}(\\d|X|x)";
}

+ (NSString *)allChinese{
    return @"(^[\u4e00-\u9fa5]+$)";
}

@end
