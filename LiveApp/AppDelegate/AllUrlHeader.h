//
//  AllUrlHeader.h
//  mall
//
//  Created by ant_huizi on 2016/11/7.
//  Copyright © 2016年 ane_it_ssk. All rights reserved.
//
#ifndef AllUrlHeader_h
#define AllUrlHeader_h

/*******测试账号和密码*********/
//账号:杭州滨江管理员   密码:1
#define kuserName [KUserDefaults objectForKey:@"customerName"]
#define ksiteId   [KUserDefaults objectForKey:@"SiteId"]
#define kSiteCode [KUserDefaults objectForKey:@"SiteCode"]
#define kPassword [KUserDefaults objectForKey:@"customerPwd"]//暂且的密码

#define OVERDUE_ALL_OPERATION_TIME 30  //这里代表30天

/*******网络请求+加密和秘钥*********/
#define Digest_key @"ane"
#define Digest_secret @"123456"


//正式环境
#define ZLTPlatform_BaseURL  @"http://103.6.222.205:83/ANE.SerApplication.Server.WCFService/OpenToAppManageSer/OpenToAppService/"
//测试环境
#define ZLTPlatform_TestURL @"http://118.178.240.201:86/ANE.SerApplication.Server.WCFService/OpenToAppManageSer/OpenToAppService/"
//URL拼接
#define ZLTPlatform_AppendURL(detailUrl) [NSString stringWithFormat:@"%@%@",ZLTPlatform_BaseURL,detailUrl]

/*******智灵通接口Type*********/
#define kZLTLoginService @"zltLoginService"  //登录接口Type
#define kZLTOrderCreatedService @"orderCreatedService"  //支付订单生成Type
#define kZLTBalanceAccountService @"balanceAccountService"  //账户余额查询Type
#define kZLTstieQueryService @"stieQueryService" //查询本网店下属网店

#define kZLTPriceQueryService @"priceQueryService"  //网点单价查询Type
#define kZLTCustomerQuantityService  @"customerQuantityService" //客户月发货量统计Type
#define kZLTCustomerBillService  @"customerBillService" //客户月账单报表Type
#define kZLTSendQuantityService  @"sendQuantityService" //派货量统计Type
#define kZLTSiteMonthBillService  @"siteMonthBillService" //门店月收支监控Type
#define kZLTSiteDayBillService  @"siteDayBillService" //门店日收支监控Type
#define kZLTBalanceMonitorService @"BalanceMonitorService" //网点收支监控Type
#define kZLTOrderScanQueryService @"orderScanQueryService" //到件扫描查询Type


#define kZLTgetRechargeBankInfoService @"getRechargeBankInfoService" //查询绑定银行卡
#define kZLTgetPayChannelService @"getPayChannelService" //查询支付支持的银行
#define kZLTbindBankService @"bindBankService" //绑定银行卡
#define kZLTdelRechargeBankInfoService @"delRechargeBankInfoService" //解除银行卡绑定
#define kZLTorderCreatedService @"orderCreatedService" //鲁班账户充值 接口
#define kZLTretermineRechargeService @"retermineRechargeService" //充值确认接口

#define kZLTBillQueryService @"billQueryService"  //充值记录查询Type
#define kVersionUpdateService @"versionUpdateService" //版本更新

/*******安粉家园广告接口*********/
#define AFJYBanner_BaseURL @"http://enfp.ane56.com/enfp/QueryMsgHttp106/advertisementServer"
#define AFJYDomainaStr @"http://enfp.ane56.com"


/*****广告Banner的测试接口*****/
#define khomePageBannerUrl @"http://www.dgtle.com/api/dgtle_api/v1/api.php?actions=diydata&apikeys=DGTLECOM_APITEST1&bid=274&charset=UTF8&dataform=json&inapi=yes&modules=portal&platform=ios&swh=480x800&version=2.8"


#endif /* AllUrlHeader_h */
