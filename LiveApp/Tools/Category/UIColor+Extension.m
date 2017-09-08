//
//  UIColor+Extension.m
//  NaiBao
//
//  Created by xuecheng on 2017/7/26.
//  Copyright © 2017年 xuecheng. All rights reserved.
//

#import "UIColor+Extension.h"

// 背景颜色
NSString *const nb_backgroundColor = @"";
NSString *const nb_separatorColor  = @"";
NSString *const nb_mainThemeColor  = @"#ff6699";

// 文字颜色
NSString *const nb_mainTextColor        = @"#333333";
NSString *const nb_grayTextColor        = @"#999999";

NSString *const nb_grayContentColor      = @"#666666";
NSString *const nb_lightgrayContentColor = @"#b0b0b0";

@implementation UIColor (Extension)

static NSMutableDictionary *_cachedDictionary = nil;

#pragma mark - 背景色调
+ (UIColor *)nb_mainThemeColor {
    return [UIColor cachedColorFormHexString:nb_mainThemeColor];
}

+ (UIColor *)nb_backgroundColor {
    return [UIColor cachedColorFormHexString:nb_backgroundColor];
}

+ (UIColor *)nb_separatorColor {
    return [UIColor cachedColorFormHexString:nb_separatorColor];
}

#pragma mark - 文字颜色
+ (UIColor *)nb_mainTextColor {
    return [UIColor cachedColorFormHexString:nb_mainTextColor];
}

+ (UIColor *)nb_grayTextColor {
    return [UIColor cachedColorFormHexString:nb_grayTextColor];
}

+ (UIColor *)nb_grayContentColor {
    return [UIColor cachedColorFormHexString:nb_grayContentColor];
}

+ (UIColor *)nb_lightgrayContentColor {
    return [UIColor cachedColorFormHexString:nb_lightgrayContentColor];
}

+ (UIColor *)nb_selectTextColor {
    return [UIColor cachedColorFormHexString:nb_mainThemeColor];
}

+ (UIColor *)cachedColorFormHexString:(NSString *)hexString {
    if (_cachedDictionary == nil) {
        _cachedDictionary = [NSMutableDictionary dictionaryWithCapacity:20];
    }
    UIColor *color = _cachedDictionary[hexString];
    if (color == nil) {
        color = [UIColor colorFromHexString:hexString];
        _cachedDictionary[hexString] = color;
    }
    return color;
}

+ (UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

@end
