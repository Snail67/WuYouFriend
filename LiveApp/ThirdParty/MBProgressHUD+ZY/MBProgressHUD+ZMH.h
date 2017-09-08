//
//  MBProgressHUD+ZMH.h
//  mall
//
//  Created by ant_huizi on 2017/3/4.
//  Copyright © 2017年 jc56.mall. All rights reserved.
//

//#import <MBProgressHUD/MBProgressHUD.h>
#import "MBProgressHUD.h"

@interface MBProgressHUD (ZMH)


+ (void)showSuccess:(NSString *)success;
+ (void)showSuccess:(NSString *)success
             toView:(UIView *)view;

+ (void)showError:(NSString *)error;
+ (void)showError:(NSString *)error
           toView:(UIView *)view;

+ (MBProgressHUD *)showMessage:(NSString *)message;
+ (MBProgressHUD *)showMessage:(NSString *)message
                        toView:(UIView *)view;

+ (MBProgressHUD *)ShowDarkMessageHUD:(NSString *)text;
+ (MBProgressHUD *)ShowDarkMessage:(NSString *)text
                            toView:(UIView *)view;

+ (MBProgressHUD *)showIndicatorView:(NSString *)message;
+ (MBProgressHUD *)showIndicatorViewHaveBGColor:(NSString *)message;
+ (MBProgressHUD *)showIndicatorView:(NSString *)message
                              toView:(UIView *)view
                         haveBgColor:(BOOL)havaBgColor;

+ (void)hideHUD;
+ (void)hideHUDForView:(UIView *)view;


@end
