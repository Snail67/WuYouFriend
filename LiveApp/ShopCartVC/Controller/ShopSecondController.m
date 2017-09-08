//
//  ShopSecondController.m
//  WuYouJiaFriend
//
//  Created by 孙叔康 on 2017/9/7.
//  Copyright © 2017年  ruizhi. All rights reserved.
//

#import "ShopSecondController.h"
#import "ScanRecordHeaderView.h" //扫描记录的头部视图

@interface ShopSecondController ()
{
    CGFloat headerHeight;

}
@property (nonatomic,strong)ScanRecordHeaderView *headerView;

@end

@implementation ShopSecondController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (DEVICE_IS_IPAD) {
        headerHeight = 360;
    } else {
        headerHeight = 290;
    }
    [self initWithContentView];

}


#pragma mark - 初始化视图
- (void)initWithContentView{
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self creatNav]; //导航视图View
    
    _headerView = [[ScanRecordHeaderView alloc]initWithFrame:CGRectMake(0, 0, phoneWidth, headerHeight)];
    [self.view addSubview:_headerView];
}
#pragma mark-创建导航条
- (void)creatNav {
    self.title = @"ssk测试";
    [self.navigationController.navigationBar lt_setBackgroundColor:[UIColor clearColor]];
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    
    
    
    UIButton *leftBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 60, 44)];
    [leftBtn setImage:[UIImage imageNamed:@"nav_leftArrow_white"] forState:UIControlStateNormal];
    [leftBtn setImage:[UIImage imageNamed:@"nav_left_highlight"] forState:UIControlStateHighlighted];
    [leftBtn addTarget:self action:@selector(NavLeftBarButtonItemClick) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    UIBarButtonItem *negativeSeperator = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    negativeSeperator.width = - 20;
    self.navigationItem.leftBarButtonItems = @[negativeSeperator,leftItem];
}

-(void)NavLeftBarButtonItemClick{
    
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"扫描记录返回上一界面");
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
