//
//  TKRootNavigationController.m
//  tokenApp
//
//  Created by ant_huizi on 2017/4/6.
//  Copyright © 2017年 ane56. All rights reserved.
//

#import "TKRootNavigationController.h"

@interface TKRootNavigationController ()

@end

@implementation TKRootNavigationController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationBar lt_setBackgroundColor:[UIColor colorFromHexString:@"#7637fd"]];
    [self.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:18],NSForegroundColorAttributeName:[UIColor whiteColor]}];

}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}


- (void)setNavigationState:(BOOL)state {
    if (state) {
        self.edgesForExtendedLayout=UIRectEdgeBottom;
    }
    else{
        self.edgesForExtendedLayout=UIRectEdgeTop;
    }
    self.navigationController.navigationBar.translucent = YES;
    [self.navigationController setNavigationBarHidden:state animated:YES];
}

#pragma mark - 横竖屏
//-(BOOL)shouldAutorotate{
//    return self.topViewController.shouldAutorotate;
//}
//
////支持旋转的方向有哪些
//-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
//    return [self.topViewController supportedInterfaceOrientations];
//}
////控制 vc present进来的横竖屏和进入方向 ，支持的旋转方向必须包含改返回值的方向 （详细的说明见下文）
//-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
//    return [self.topViewController preferredInterfaceOrientationForPresentation];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
