//
//  NSObject+Obj.h
//  YiChatClient
//
//  Created by sunshukang on 15-12-8.
//  Copyright (c) 2015年 ds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Obj)

+ (instancetype)modalWithDictionary:(NSDictionary*)dic;

+ (NSMutableArray*)modalWithArray:(NSArray*)array;
@end
