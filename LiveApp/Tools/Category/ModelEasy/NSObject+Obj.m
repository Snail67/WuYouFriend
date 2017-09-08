//
//  NSObject+Obj.m

//
//  Created by sunshukang on 15-12-8.
//  Copyright (c) 2015年 ds. All rights reserved.
//

#import "NSObject+Obj.h"

@implementation NSObject (Obj)

+(instancetype)modalWithDictionary:(NSDictionary*)dic{
    NSObject *obj=[[self alloc]init];
    [obj setValuesForKeysWithDictionary:dic];
    return obj;
}

+(NSMutableArray*)modalWithArray:(NSArray*)array{
    NSMutableArray *modalArray=[NSMutableArray array];
    for (NSDictionary *dic in array) {
        id obj=[self modalWithDictionary:dic];
        [modalArray addObject:obj];
    }
    return modalArray;
}

#pragma mark--如果将来字典的字段中出现系统关键字或者中文名,例如id,改成属性名myID,重写以下方法
/*
 -(void)setValue:(id)value forKey:(NSString *)key { //这个要写在对应的Model方法里
 if ([key isEqualToString:@"id"]) {
 //[self setValue:value forKey:@"myID"]; //将value值赋给myID
 }else {
 [super setValue:value forKey:key];
 }
 }
 */

@end
