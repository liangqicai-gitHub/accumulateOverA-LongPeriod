//
//  LQCSDWebImageBridge.h
//  AccumulateOverALongPeriod
//
//  Created by 梁齐才 on 2018/3/22.
//  Copyright © 2018年 梁齐才. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface LQCSDWebImageBridge : NSObject

// SetImage
+ (void)setImageView:(UIImageView *)imageView
           urlString:(NSString *)urlSting;

+ (void)setImageView:(UIImageView *)imageView
           urlString:(NSString *)urlString
         placeholder:(UIImage *)placeholder;

+ (void)setImageView:(UIImageView *)imageView
           urlString:(NSString *)urlString
         placeholder:(UIImage *)placeholder
       completeBlock:(void (^)(UIImage *image,NSError *error,BOOL fromCache))completeBlock;


//downloadImage
+ (void)downloadImageWithUrl:(NSString *)url
           withCompleteBlock:(void (^)(UIImage *image,NSError *error,BOOL fromCache))completeBlock;

@end
NS_ASSUME_NONNULL_END
