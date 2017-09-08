//
//  UIColor+Extension.h
//  NaiBao
//
//  Created by xuecheng on 2017/7/26.
//  Copyright © 2017年 xuecheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extension)

// 背景颜色
@property(class, nonatomic, readonly) UIColor *nb_mainThemeColor;
@property(class, nonatomic, readonly) UIColor *nb_backgroundColor;
@property(class, nonatomic, readonly) UIColor *nb_separatorColor;

// 文字颜色
@property(class, nonatomic, readonly) UIColor *nb_mainTextColor;
@property(class, nonatomic, readonly) UIColor *nb_grayTextColor;

@property(class, nonatomic, readonly) UIColor *nb_grayContentColor;
@property(class, nonatomic, readonly) UIColor *nb_lightgrayContentColor;

@property(class, nonatomic, readonly) UIColor *nb_selectTextColor;

+ (UIColor *)colorFromHexString:(NSString *)hexString;

@end
