//
//  NSArray+Usual.m
//  sdfd
//
//  Created by 梁齐才 on 16/5/26.
//  Copyright © 2016年 梁齐才. All rights reserved.
//

#import "NSArray+Usual.h"

@implementation NSArray (Usual)

+ (BOOL)isEmpty:(id)sender
{
    if ([sender isKindOfClass:[NSArray class]]){
        return [(NSArray *)sender count] == 0;
    }
    return NO;
}


+ (BOOL)isArray:(id)sender equalOrLongerThan:(NSInteger)count
{
    if (![self isEqual:sender]) return NO;
    
    return [(NSArray *)sender count] >= count;
}


- (id)safeObjAtIndex:(NSInteger)index
{
    if (index < 0) return nil;
    
    if (self.count > index + 1){
        return [self objectAtIndex:index];
    }
    return nil;
}

+ (id)safeObjAtInde:(NSInteger)index inArr:(NSArray *)arr
{
    if ([arr isKindOfClass:[NSArray class]]){
        return [arr safeObjAtIndex:index];
    }
    return nil;
}

@end
