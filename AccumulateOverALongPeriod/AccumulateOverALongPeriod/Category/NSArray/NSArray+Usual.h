//
//  NSArray+Usual.h
//  sdfd
//
//  Created by 梁齐才 on 16/5/26.
//  Copyright © 2016年 梁齐才. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface NSArray (Usual)

+ (BOOL)isEmpty:(nullable id)sender;

+ (BOOL)isArray:(nullable id)sender equalOrLongerThan:(NSInteger)count;

- (nullable id)safeObjAtIndex:(NSInteger)index;

+ (nullable id)safeObjAtInde:(NSInteger)index inArr:(nullable NSArray *)arr;

@end

NS_ASSUME_NONNULL_END

