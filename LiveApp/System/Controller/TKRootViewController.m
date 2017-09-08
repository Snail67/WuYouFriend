//
//  TKRootViewController.m
//  tokenApp
//
//  Created by ant_huizi on 2017/4/6.
//  Copyright © 2017年 ane56. All rights reserved.
//

#import "TKRootViewController.h"

@interface TKRootViewController ()

@end

@implementation TKRootViewController

/**
 在个别状态栏字体颜色不一样的vc中
 
 -(void)viewWillAppear:(BOOL)animated {
 [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
 
 }
 
 -(void)viewWillDisappear:(BOOL)animated {
 [super viewWillDisappear:animated];
 
 [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
 }
 */

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
   
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.navigationController.navigationBar.height = 44;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.navigationController.navigationBar lt_setBackgroundColor:[UIColor colorFromHexString:@"#7637fd"]];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:18],NSForegroundColorAttributeName:[UIColor whiteColor]}];

}

- (UIBarButtonItem *)customBackItemWithTarget:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"nav_left_normal"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"nav_left_highlight"] forState:UIControlStateHighlighted];
    [button sizeToFit];
    [button addTarget:target
               action:action
     forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:button];
    
}


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
