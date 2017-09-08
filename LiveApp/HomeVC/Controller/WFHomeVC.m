//
//  WFHomeVC.m
//  WuYouJiaFriend
//
//  Created by  ruizhi on 2017/9/4.
//  Copyright © 2017年  ruizhi. All rights reserved.
//

#import "WFHomeVC.h"
#import "UIButton+ImageTileSpacing.h"
#import "ShopModel.h"


@interface WFHomeVC ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UIView *searchView;
@property(nonatomic,strong)UITableView *myTab;
@property(nonatomic,strong)UIView *headerView;
@property(nonatomic,strong)NSMutableArray *arrayBtnTitle;
@property(nonatomic,strong)NSMutableArray *arrayBtnImage;
@property(nonatomic,strong)NSMutableArray *arrayData;

@end

@implementation WFHomeVC

-(NSMutableArray *)arrayData{
    
    if(!_arrayData){
        _arrayData = [NSMutableArray array];
        for (int i = 0; i < 10; i++) {
            ShopModel *model = [[ShopModel alloc]init];
            model.imageName = @"2.jpg";
            model.shopTitle = @"婴儿连体衣春秋 迪士尼新生儿衣服纯棉睡衣长袖,婴儿连体衣春秋 ";
            model.shopPrice = @"¥59";
            model.shopPriceYuan = @"¥108";
            model.shopYongJinPrice = @"¥9.9";
            [_arrayData addObject:model];
        }
    }
    
    return _arrayData;
    
    
}

-(NSMutableArray *)arrayBtnTitle{
    if(!_arrayBtnTitle){
         _arrayBtnTitle = [NSMutableArray arrayWithObjects:@"邀请注册",@"妈妈课堂",@"母婴回答",@"群管理", nil];
    }
    return _arrayBtnTitle;
    
    
}

-(NSMutableArray *)arrayBtnImage{
    if(!_arrayBtnImage){
        
        _arrayBtnImage = [NSMutableArray arrayWithObjects:@"ShouYe/register",@"ShouYe/class",@"ShouYe/question",@"ShouYe/group", nil];
    }
    
    
    
    return _arrayBtnImage;
}

-(UIView *)headerView{
    if(!_headerView){
        _headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, phoneWidth, 350)];
        
        
    }
    
    
    return _headerView;
    
}
-(UITableView*)myTab{
    if(!_myTab){
        _myTab = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, phoneWidth, phoneHeight - 50-64) style:UITableViewStyleGrouped];
        
        _myTab.delegate = self;
        _myTab.dataSource = self;
        
//        [_myTab registerClass:[ShopTableViewCell class] forCellReuseIdentifier:@"cell"];
      //  _myTab.backgroundColor = [UIColor colorFromHexString:@"#7237fb"];
        _myTab.tableHeaderView = self.headerView;
    }
    
    
    return _myTab;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
      self.view.backgroundColor = [UIColor whiteColor];
      [self initHeaderView];
      [self initNav];
//      [self.view addSubview:self.myTab];
  
    self.automaticallyAdjustsScrollViewInsets = NO;
    
}
//初始化headerView
-(void)initHeaderView{
    UIView *viewBtnFour = [[UIView alloc]initWithFrame:CGRectMake(0, 0, phoneWidth, 150)];
    viewBtnFour.backgroundColor = [UIColor colorFromHexString:@"#7237fb"];
    CGFloat space = (phoneWidth-4*66) / 4;
    for (int i = 0; i < 4; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        btn.frame = CGRectMake(space/2 + (space + 66) * i, (150-66)/2, 66, 66);
        [btn setTitle:self.arrayBtnTitle[i] forState:UIControlStateNormal];
        btn.tag = i + 1;
        btn.titleLabel.font = [UIFont boldSystemFontOfSize:15];
        [btn setImage:[UIImage imageNamed:self.arrayBtnImage[i]] forState:UIControlStateNormal];
        [btn layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleTop imageTitleSpace:20];
        [btn addTarget:self action:@selector(onBtnFourClick:) forControlEvents:UIControlEventTouchUpInside];
        [viewBtnFour addSubview:btn];
        
    }
    [self.headerView addSubview:viewBtnFour];
//    IconCustomView *IconView = [[IconCustomView alloc]initWithFrame:CGRectMake(0, 150, phoneWidth, 200)];
//    [self.headerView addSubview:IconView];
    
    
    
}
-(UIView *)searchView{
    if(!_searchView){
        _searchView = [[UIView alloc]init];
        _searchView.bounds = CGRectMake(0, 0, phoneWidth - (13+15+20+10)*2, 30);
        _searchView.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.1];
        _searchView.layer.cornerRadius = 15;
        _searchView.layer.masksToBounds = YES;
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(30, 5, 20, 20)];
        imageView.image = [UIImage imageNamed:@"ShouYe/search"];
        [_searchView addSubview:imageView];
        UILabel *lblSearch = [[UILabel alloc]init];
//        lblSearch.frame = CGRectMake(60, 0, _searchView.width-60, 30);
        lblSearch.text = @"贝因美奶粉";
        lblSearch.textColor = [UIColor whiteColor];
        
        lblSearch.textAlignment = NSTextAlignmentLeft;
        
        [_searchView addSubview:lblSearch];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onSearchBtnClick)];
        [_searchView addGestureRecognizer:tap];

    }
    return _searchView;
}

//初始化Nav
-(void)initNav{
    //去除导航栏1像素
   
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navbg.jpg"] forBarMetrics:UIBarMetricsDefault];
   // self.navigationController.navigationBar.clipsToBounds = YES;
    
      // self.navigationController.navigationBar.barTintColor = [UIColor colorFromHexString:@"#7237fb"];
    //左边更多
  //  UIButton *btnLeft = [UIButton buttonWithType:UIButtonTypeCustom];
   // btnLeft.bounds = CGRectMake(0, 0, 20, 20);
   // [btnLeft setBackgroundImage:[UIImage imageNamed:@"ShouYe/moretop"] forState:UIControlStateNormal];
  //  [btnLeft addTarget:self action:@selector(moreTopBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *itemLeft = [[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:@"ShouYe/moretop"]   imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(moreTopBtnClick)];
    
    //中间搜索区域
    UIBarButtonItem *itemSpace = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    itemSpace.width = 13;
    UIBarButtonItem *itemSearch = [[UIBarButtonItem alloc]initWithCustomView:self.searchView];
    
    self.navigationItem.leftBarButtonItems = @[itemLeft,itemSearch,itemSpace];
    //右边消息
    
  //  UIButton *btnRight = [UIButton buttonWithType:UIButtonTypeCustom];
  //  btnRight.bounds = CGRectMake(0, 0, 20, 20);
  //  [btnRight setBackgroundImage:[UIImage imageNamed:@"ShouYe/message"] forState:UIControlStateNormal];
  //  [btnRight addTarget:self action:@selector(messageBtnClick) /forControlEvents:UIControlEventTouchUpInside];

    UIBarButtonItem *itemRight = [[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:@"ShouYe/message"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  style:UIBarButtonItemStylePlain target:self  action:@selector(messageBtnClick)];
    self.navigationItem.rightBarButtonItem = itemRight;

    
    
}

////更多按钮
//-(void)moreTopBtnClick{
//    FenLeiSearchVC *searchVC = [[FenLeiSearchVC alloc]init];
//    
//    [self.navigationController pushViewController:searchVC animated:YES];
//    
//    
//}

//消息按钮
-(void)messageBtnClick{
    
//    SignVC *sign = [[SignVC alloc]init];
//    
//    [self.navigationController pushViewController:sign animated:YES];

}
//进入搜索界面
-(void)onSearchBtnClick{
    
    NSLog(@"进入搜索界面");
    
    
}
//进入4按钮界面
-(void)onBtnFourClick:(UIButton *)btn{
    
    NSLog(@"进入4按钮界面");
    
}
#pragma mark - UITableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.arrayData.count;
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return nil;
//    ShopTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
//   // cell.textLabel.text = @"标签";
//    cell.model = self.arrayData[indexPath.row];
//    [cell useCellFrameCacheWithIndexPath:indexPath tableView:tableView];
//    return cell;
    
}

-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    if(section == 0){
        UIView *viewBase = [[UIView alloc]init];
        viewBase.frame = CGRectMake(0, 0, phoneWidth, 60);
        UIView *viewLine = [[UIView alloc]init];
        viewLine.frame = CGRectMake(0, 0, phoneWidth, 10);
        viewLine.backgroundColor = [UIColor colorFromHexString:@"#ebebeb"];
        [viewBase addSubview:viewLine];
        UIView *viewLabel = [[UIView alloc]init];
        viewLabel.frame = CGRectMake(0, 10, phoneWidth, 50);
        viewLabel.backgroundColor = [UIColor whiteColor];
        [viewBase addSubview:viewLabel];
        UILabel *lblTitle = [[UILabel alloc]init];
        lblTitle.frame = CGRectMake(20, 0, phoneWidth, 50);
        lblTitle.text = @"精选商品";
        lblTitle.textColor = [UIColor blackColor];
        [viewLabel addSubview:lblTitle];
        return viewBase;
        
    }
    return nil;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 60;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50;
//    id model = self.arrayData[indexPath.row];
//    return [self.myTab cellHeightForIndexPath:indexPath model:model keyPath:@"model" cellClass:[ShopTableViewCell class] contentViewWidth:[self cellContentViewWith]];
}


- (CGFloat)cellContentViewWith
{
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    
    // 适配ios7横屏
    if ([UIApplication sharedApplication].statusBarOrientation != UIInterfaceOrientationPortrait && [[UIDevice currentDevice].systemVersion floatValue] < 8) {
        width = [UIScreen mainScreen].bounds.size.height;
    }
    return width;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
