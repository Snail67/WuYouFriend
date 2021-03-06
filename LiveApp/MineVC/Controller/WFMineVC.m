//
//  WFMineVC.m
//  WuYouJiaFriend
//
//  Created by  ruizhi on 2017/9/4.
//  Copyright © 2017年  ruizhi. All rights reserved.
//

#import "WFMineVC.h"

#import "MineSecondController.h"

@interface WFMineVC ()

@end

@implementation WFMineVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self creatNav];
    
}

#pragma mark-创建导航条
- (void)creatNav {
    self.title = @"我的";
//    [self.navigationController.navigationBar lt_setBackgroundColor:[UIColor clearColor]];
//    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    
    
    
    UIButton *leftBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 60, 44)];
    [leftBtn setImage:[UIImage imageNamed:@"nav_leftArrow_white"] forState:UIControlStateNormal];
    [leftBtn setImage:[UIImage imageNamed:@"nav_left_highlight"] forState:UIControlStateHighlighted];
    [leftBtn addTarget:self action:@selector(NavLeftBarButtonItemClick) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    UIBarButtonItem *negativeSeperator = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    negativeSeperator.width = - 20;
    self.navigationItem.leftBarButtonItems = @[negativeSeperator,leftItem];
    
    
    //导航条右侧
    UIButton *rightButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 44)];
    //            rightButton.backgroundColor = [UIColor orangeColor];
    [rightButton setTitle:@"编辑" forState:UIControlStateNormal];
    [rightButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    rightButton.titleLabel.font = [UIFont systemFontOfSize:16];
    [rightButton addTarget:self action:@selector(NavRightBarButtonItemClick) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightBarBtnItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    UIBarButtonItem *rightNegativeSeperator = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    rightNegativeSeperator.width = -10;
    self.navigationItem.rightBarButtonItems =@[rightNegativeSeperator,rightBarBtnItem];
    
    
    
    
}

-(void)NavLeftBarButtonItemClick{
    
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"扫描记录返回上一界面");
}


- (void)NavRightBarButtonItemClick{
    
    MineSecondController *vc = [[MineSecondController alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
    
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
