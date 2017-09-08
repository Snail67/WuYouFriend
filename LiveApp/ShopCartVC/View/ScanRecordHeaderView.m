//
//  ScanRecordHeaderView.m
//  tokenApp
//
//  Created by 孙叔康 on 2017/5/17.
//  Copyright © 2017年 ane56. All rights reserved.
//

#import "ScanRecordHeaderView.h" //扫描记录的头部视图

@implementation ScanRecordHeaderView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.headerHeight = frame.size.height;
        
        CGRect bounds = CGRectMake(0, 0, phoneWidth, self.headerHeight);
        self.headerContentView = [[UIView alloc] initWithFrame:bounds];
        
        
        
        //背景
        UIImageView *headerImageView = [[UIImageView alloc] init];
        headerImageView.bounds = bounds;
        headerImageView.center = self.headerContentView.center;
        //        headerImageView.contentMode = UIViewContentModeTop;
        headerImageView.contentMode = UIViewContentModeScaleToFill;
        headerImageView.image = [UIImage imageNamed:@"userCenter_top_bg"];
        self.headerContentView.layer.masksToBounds = YES;
        
        self.headerImageView = headerImageView;
        [self.headerContentView addSubview:self.headerImageView];
        self.headerContentView.layer.masksToBounds = YES;
        
        if (phoneWidth > 414) {
            self.topSpace = 128;
        }else {
            self.topSpace = 92;
        }
        
        UIImageView *dayCountImageView = [[UIImageView alloc]init];
        dayCountImageView.image = [UIImage imageNamed:@"scanRecord_dayCountBg"];
        [self.headerContentView addSubview:dayCountImageView];
        [dayCountImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo (self.headerContentView);
            make.top.mas_equalTo(_topSpace);
            make.width.mas_equalTo(121.28);
            make.height.mas_equalTo(55);
        }];
        
        
        /*
        
        self.dayCountLab = [[UILabel alloc] init];
        self.dayCountLab.text = @"0天";
        self.dayCountLab.textAlignment = NSTextAlignmentCenter;
//        self.dayCountLab.textColor = dark_color;
        self.dayCountLab.numberOfLines =2;
        [self.headerContentView addSubview:self.dayCountLab];
        [self.dayCountLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo (self.headerContentView);
            make.centerY.equalTo (dayCountImageView);
            make.height.mas_equalTo(50);
            make.width.mas_equalTo (22);
        }];
        
        
        //开始日期按钮2017-05-17
        self.startTimeDateBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.startTimeDateBtn.tag = 1001;
        self.startTimeDateBtn.backgroundColor = [UIColor clearColor];
        [self.startTimeDateBtn setTitle:[NSString stringWithFormat:@"%@",[TKTool getCurrentDay]] forState:UIControlStateNormal];
        [self.startTimeDateBtn setTitleColor:navBar_tabBar_color forState:UIControlStateNormal];
        self.startTimeDateBtn.titleLabel.font = [UIFont boldSystemFontOfSize:18];
        [self.headerContentView addSubview:self.startTimeDateBtn];
        [self.startTimeDateBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo (self.headerContentView);
            make.right.equalTo(dayCountImageView.mas_left);
            make.top.mas_equalTo(_topSpace);
            make.height.mas_equalTo(28);
        }];
        
        
        
        
        //开始分钟按钮00:00
        self.startTimeMinuteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.startTimeMinuteBtn.tag = 1002;
        self.startTimeMinuteBtn.backgroundColor = [UIColor clearColor];
        [self.startTimeMinuteBtn setTitle:@"00:00" forState:UIControlStateNormal];
        [self.startTimeMinuteBtn setTitleColor:navBar_tabBar_color forState:UIControlStateNormal];
        [self.headerContentView addSubview:self.startTimeMinuteBtn];
        [self.startTimeMinuteBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo (self.startTimeDateBtn);
            make.top.equalTo (self.startTimeDateBtn.mas_bottom).offset(-5);
            make.width.equalTo(self.startTimeDateBtn);
            make.height.mas_equalTo(28);
        }];
        

        
        
        //结束日期按钮2017-05-17
        self.endTimeDateBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.endTimeDateBtn.tag = 1003;
        self.endTimeDateBtn.backgroundColor = [UIColor clearColor];
        [self.endTimeDateBtn setTitle:[NSString stringWithFormat:@"%@",[TKTool getCurrentDay]] forState:UIControlStateNormal];
        [self.endTimeDateBtn setTitleColor:navBar_tabBar_color forState:UIControlStateNormal];
        self.endTimeDateBtn.titleLabel.font = [UIFont boldSystemFontOfSize:18];
        [self.headerContentView addSubview:self.endTimeDateBtn];
        [self.endTimeDateBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo (self.headerContentView);
            make.left.equalTo(dayCountImageView.mas_right);
            make.top.mas_equalTo(_topSpace);
            make.height.mas_equalTo(28);
        }];

        //结束分钟按钮00:00
        self.endTimeMinuteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.endTimeMinuteBtn.tag = 1004;
        self.endTimeMinuteBtn.backgroundColor = [UIColor clearColor];
        [self.endTimeMinuteBtn setTitle:@"23:59" forState:UIControlStateNormal];
        [self.endTimeMinuteBtn setTitleColor:navBar_tabBar_color forState:UIControlStateNormal];
        [self.headerContentView addSubview:self.endTimeMinuteBtn];
        [self.endTimeMinuteBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo (self.endTimeDateBtn);
            make.top.equalTo (self.endTimeDateBtn.mas_bottom).offset(-5);
            make.width.equalTo(self.endTimeDateBtn);
            make.height.mas_equalTo(28);
        }];
        

        
        */
    
//        UIImageView *distributerBgImageView = [[UIImageView alloc]init];
//        distributerBgImageView.image = [UIImage imageNamed:@"scanRecord_distributer"];
//        [self.headerContentView addSubview:distributerBgImageView];
//        [distributerBgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerX.equalTo (self.headerContentView);
//            make.top.equalTo(dayCountImageView.mas_bottom).offset(26);
//            make.width.mas_equalTo(150);
//            make.height.mas_equalTo(25);
//        }];
        
        
        
        self.distributerLab = [[UILabel alloc] init];
        self.distributerLab.text = @"业务员:孙叔康";
        self.distributerLab.textColor = [UIColor whiteColor];
        [self.headerContentView addSubview:self.distributerLab];
        [self.distributerLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo (self.headerContentView);
//            make.centerY.equalTo (distributerBgImageView);
            make.top.equalTo(dayCountImageView.mas_bottom).offset(26);
            make.height.mas_equalTo(22);
        }];
    

        
       [self addSubview:self.headerContentView];
        
    }
    return self;
}

- (void)dealloc {
    NSLog(@"view----ScanRecordHeaderView销毁了");
}

@end
