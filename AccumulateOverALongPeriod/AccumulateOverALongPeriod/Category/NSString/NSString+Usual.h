//
//  NSString+Usual.h
//  sdfd
//
//  Created by 梁齐才 on 16/5/26.
//  Copyright © 2016年 梁齐才. All rights reserved.
//

#import <Foundation/Foundation.h>

#define Str_F(...) [NSString stringWithFormat:__VA_ARGS__]
#define Str_New(a) [NSString newString:a]
#define Str_DocumetsPath [NSString documentsDirectory]

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Usual)

// (去掉两头的空串) 判断是不是空串
+ (BOOL)isEmptyString:(nullable NSString *)string;

+ (BOOL)isNoLengthString:(nullable NSString *)string;

+ (NSString *)newString:(nullable NSString *)string;

//document目录
+ (NSString *)documentsDirectory;

// 参数 = sss.txt
+ (nullable NSString *)mainBundelResourcePath:(nullable NSString *)resourceName;

//去掉空格
- (NSString *)trimString;

//子串出现的所有range 从左到右排列
- (nullable NSArray<NSValue *> *)rangesOfString:(NSString *)searchString;

// 1是星期天 （日）   7是星期6（六）
+ (NSString *)weekDayWithIndex:(NSInteger)index;


+ (NSString *)numeralsInTheCapitalForm:(NSInteger)index;


//不是则返回0
+ (NSInteger)numberOfObject:(id)obj;

@end

NS_ASSUME_NONNULL_END
