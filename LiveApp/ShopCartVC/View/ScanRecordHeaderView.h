//
//  ScanRecordHeaderView.h
//  tokenApp
//
//  Created by 孙叔康 on 2017/5/17.
//  Copyright © 2017年 ane56. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScanRecordHeaderView : UIView


@property (nonatomic, assign) CGFloat headerHeight;

@property (nonatomic, strong) UIView *headerContentView;
@property (nonatomic, strong) UIImageView *headerImageView;

@property (nonatomic, strong) UIImageView *dayCountImageView;
@property (nonatomic, strong) UILabel *dayCountLab;

@property (nonatomic,strong)UIButton *startTimeDateBtn;
@property (nonatomic,strong)UIButton* endTimeDateBtn;

@property (nonatomic,strong)UIButton *startTimeMinuteBtn;
@property (nonatomic,strong)UIButton *endTimeMinuteBtn;



@property (nonatomic, strong) UILabel *distributerLab;


//@property (nonatomic,strong) UIImageView *distributerBgImageView;




@property (nonatomic, assign) CGFloat topSpace;
@property (nonatomic, assign) CGFloat iconWidth;




@end
