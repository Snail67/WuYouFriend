//
//  TKRootNavigationController.h
//  tokenApp
//
//  Created by ant_huizi on 2017/4/6.
//  Copyright © 2017年 ane56. All rights reserved.
//

#import "RTRootNavigationController.h"

@interface TKRootNavigationController : RTRootNavigationController

/**
 点击界面就隐藏导航栏，再点击就显示导航栏
 
 @param state 显示还是隐藏
 */
- (void)setNavigationState:(BOOL)state;


@end
