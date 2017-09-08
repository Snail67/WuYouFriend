//
//  NBTabBarControllerConfig.m
//  NaiBao
//
//  Created by xuecheng on 2017/7/31.
//  Copyright © 2017年 xuecheng. All rights reserved.
//

#import "WFTabBarControllerConfig.h"
//#import "WFNavigationController.h"
#import "WFHomeVC.h"
#import "WFShopcartVC.h"
#import "UIColor+Extension.h"
#import "WFMineVC.h"
#import "TKRootNavigationController.h"

static CGFloat const NBTabBarControllerHeight = 50.f;

@interface WFTabBarControllerConfig ()<UITabBarControllerDelegate>

@property (nonatomic, readwrite, strong) CYLTabBarController *tabBarController;

@end

@implementation WFTabBarControllerConfig
/**
 *  lazy load tabBarController
 *
 *  @return CYLTabBarController
 */
- (CYLTabBarController *)tabBarController {
    if (_tabBarController == nil) {
        /**
         * 以下两行代码目的在于手动设置让TabBarItem只显示图标，不显示文字，并让图标垂直居中。
         * 等效于在 `-tabBarItemsAttributesForController` 方法中不传 `CYLTabBarItemTitle` 字段。
         * 更推荐后一种做法。
         */
        UIEdgeInsets imageInsets = UIEdgeInsetsZero;//UIEdgeInsetsMake(4.5, 0, -4.5, 0);
        UIOffset titlePositionAdjustment = UIOffsetZero;//UIOffsetMake(0, MAXFLOAT);
        
        CYLTabBarController *tabBarController = [CYLTabBarController tabBarControllerWithViewControllers:self.viewControllers
                                                                                   tabBarItemsAttributes:self.tabBarItemsAttributesForController
                                                                                             imageInsets:imageInsets
                                                                                 titlePositionAdjustment:titlePositionAdjustment];
        
        [self customizeTabBarAppearance:tabBarController];
        
        _tabBarController = tabBarController;
    }
    return _tabBarController;
}

- (NSArray *)viewControllers {
    WFHomeVC *firstViewController = [[WFHomeVC alloc] init];
    
    TKRootNavigationController *firstNavigationController = [[TKRootNavigationController alloc]
                                                             initWithRootViewController:firstViewController];
    
    
    WFShopcartVC *secondViewController = [[WFShopcartVC alloc] init];
    
    TKRootNavigationController *secondNavigationController = [[TKRootNavigationController alloc]
                                                             initWithRootViewController:secondViewController];
    
    
    WFMineVC  *fourthViewController = [[WFMineVC alloc] init];
    TKRootNavigationController *fourthNavigationController = [[TKRootNavigationController alloc]
                                                              initWithRootViewController:fourthViewController];
    
   
    
    NSArray *viewControllers = @[
                                 firstNavigationController,
                                 secondNavigationController,
                                 fourthNavigationController
                                 ];
    return viewControllers;
}

- (NSArray *)tabBarItemsAttributesForController {
    NSDictionary *firstTabBarItemsAttributes = @{
                                                 CYLTabBarItemTitle : @"首页",
                                                 CYLTabBarItemImage : @"home_nomal",
                                                 CYLTabBarItemSelectedImage : @"home_selected",
                                                 };
    NSDictionary *secondTabBarItemsAttributes = @{
                                                  CYLTabBarItemTitle : @"购物车",
                                                  CYLTabBarItemImage : @"buy_nomal",
                                                  CYLTabBarItemSelectedImage : @"buy_selected",
                                                  };
    NSDictionary *fourthTabBarItemsAttributes = @{
                                                 CYLTabBarItemTitle : @"我的",
                                                 CYLTabBarItemImage : @"my_nomal",
                                                 CYLTabBarItemSelectedImage : @"my_selected",
                                                 };
    
    NSArray *tabBarItemsAttributes = @[
                                       firstTabBarItemsAttributes,
                                       secondTabBarItemsAttributes,
                                       fourthTabBarItemsAttributes
                                     
                                       ];
    return tabBarItemsAttributes;
}

/**
 *  更多TabBar自定义设置：比如：tabBarItem 的选中和不选中文字和背景图片属性、tabbar 背景图片属性等等
 */
- (void)customizeTabBarAppearance:(CYLTabBarController *)tabBarController {
    // Customize UITabBar height
     tabBarController.tabBarHeight = NBTabBarControllerHeight;
    
    // set the text color for unselected state
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    // set the text color for selected state
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor colorFromHexString:@"#7637fd"];
    
    // set the text Attributes
    UITabBarItem *tabBar = [UITabBarItem appearance];
    [tabBar setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    [tabBar setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    // Set the dark color to selected tab (the dimmed background)
    // [self customizeTabBarSelectionIndicatorImage];
    
    // update TabBar when TabBarItem width did update
    // If your app need support UIDeviceOrientationLandscapeLeft or UIDeviceOrientationLandscapeRight，
    // remove the comment '//'
    // [self updateTabBarCustomizationWhenTabBarItemWidthDidUpdate];
    
    // set the bar shadow image
    // This shadow image attribute is ignored if the tab bar does not also have a custom background image.So at least set somthing.
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc] init]];
    [[UITabBar appearance] setBackgroundColor:[UIColor whiteColor]];
    [[UITabBar appearance] setShadowImage:[UIImage imageNamed:@"ShouYe/bg_tapbar_top_line"]];
    
//    // set the bar background image
//     UITabBar *tabBarAppearance = [UITabBar appearance];
//     [tabBarAppearance setBackgroundImage:[UIImage imageNamed:@""]];
    
//     remove the bar system shadow image
//     [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
}

- (void)dealloc {
    
}

@end
