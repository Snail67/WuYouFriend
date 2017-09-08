//
//  MBProgressHUD+ZMH.m
//  mall
//
//  Created by ant_huizi on 2017/3/4.
//  Copyright © 2017年 jc56.mall. All rights reserved.
//

#import "MBProgressHUD+ZMH.h"

@implementation MBProgressHUD (ZMH)



/**
 *  显示信息
 *
 *  @param text 信息内容
 *  @param icon 图标
 *  @param view 显示的视图
 */
+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = text;
    // 设置图片
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@", icon]]];
    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;
    
    
    hud.label.textColor = [UIColor whiteColor];
    hud.bezelView.color = [UIColor blackColor];
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    //    hud.dimBackground = NO;
    //    hud.bezelView.layer.cornerRadius = 10;
    // 1秒之后再消失
    [hud hideAnimated:YES afterDelay:1.5];
}

/**
 *  显示成功信息
 *
 *  @param success 信息内容
 */
+ (void)showSuccess:(NSString *)success
{
    [self showSuccess:success toView:nil];
}

/**
 *  显示成功信息
 *
 *  @param success 信息内容
 *  @param view    显示信息的视图
 */
+ (void)showSuccess:(NSString *)success toView:(UIView *)view
{
    [self show:success icon:@"success.png" view:view];
}

/**
 *  显示错误信息
 *
 */
+ (void)showError:(NSString *)error
{
    [self showError:error toView:nil];
}

/**
 *  显示错误信息
 *
 *  @param error 错误信息内容
 *  @param view  需要显示信息的视图
 */
+ (void)showError:(NSString *)error toView:(UIView *)view{
    [self show:error icon:@"error.png" view:view];
}

/**
 *  显示错误信息
 *
 *  @param message 信息内容
 *
 *  @return 直接返回一个MBProgressHUD，需要手动关闭
 */
+ (MBProgressHUD *)showMessage:(NSString *)message
{
    return [self showMessage:message toView:nil];
}

/**
 *  显示一些信息
 *
 *  @param message 信息内容
 *  @param view    需要显示信息的视图
 *
 *  @return 直接返回一个MBProgressHUD，需要手动关闭
 */
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view {
    
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = message;
    hud.removeFromSuperViewOnHide = YES;
    //    hud.bezelView.layer.cornerRadius = 10;
    hud.mode = MBProgressHUDModeText;
    
    return hud;
}

/**
 *  手动关闭MBProgressHUD
 */
+ (void)hideHUD
{
    [self hideHUDForView:nil];
}

/**
 *  手动关闭MBProgressHUD
 *
 *  @param view    显示MBProgressHUD的视图
 */
+ (void)hideHUDForView:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
//    dispatch_async(dispatch_get_main_queue(), ^{
        [self hideHUDForView:view animated:YES];
//    });
    
}

/**
 显示信息自动消失
 
 @param text 要显示的文本
 @param view view
 */
+ (MBProgressHUD *)ShowDarkMessage:(NSString *)text toView:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.removeFromSuperViewOnHide = YES;
    //    hud.bezelView.layer.cornerRadius = 10;
    hud.bezelView.color = [UIColor blackColor];
    hud.mode = MBProgressHUDModeText;
    
    hud.detailsLabel.text = text;
    hud.detailsLabel.font = [UIFont systemFontOfSize:15];
    hud.detailsLabel.textColor = [UIColor whiteColor];
    
    //    hud.minSize = CGSizeMake(120, 0);
    [hud showAnimated:YES];
    //    [hud hideAnimated:YES afterDelay:1.5];
    // 1秒之后再消失
    [hud hideAnimated:YES afterDelay:1.5];
    
    return hud;
}

+ (MBProgressHUD *)ShowDarkMessageHUD:(NSString *)text {
    return [self ShowDarkMessage:text toView:nil];
}

+ (MBProgressHUD *)showIndicatorView:(NSString *)message toView:(UIView *)view haveBgColor:(BOOL)havaBgColor {
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = message;
    hud.removeFromSuperViewOnHide = YES;
    hud.mode = MBProgressHUDModeIndeterminate;
//    hud.userInteractionEnabled = YES;
    if (havaBgColor) {
        
        hud.activityIndicatorColor = [UIColor whiteColor];
        hud.label.textColor = [UIColor whiteColor];
        
        hud.bezelView.style = MBProgressHUDBackgroundStyleBlur;
        hud.bezelView.color = [UIColor blackColor];
        
    } else{
        
        
    }
    
    return hud;
}


+ (MBProgressHUD *)showIndicatorView:(NSString *)message  {
    return [MBProgressHUD showIndicatorView:message toView:nil haveBgColor:NO];
}

+ (MBProgressHUD *)showIndicatorViewHaveBGColor:(NSString *)message {
    return [MBProgressHUD showIndicatorView:message toView:nil haveBgColor:YES];
}


@end
