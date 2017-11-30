//
//  WXEchoModule.m
//  WeexOCProject
//
//  Created by 韩承海 on 2017/11/30.
//  Copyright © 2017年 韩小醋. All rights reserved.
//

#import "WXEchoModule.h"

@implementation WXEchoModule

@synthesize weexInstance;//让该module 获取当前instance

//事件回调
WX_EXPORT_METHOD(@selector(echo:))
- (void)echo:(NSString *)param callback:(WXModuleKeepAliveCallback)callback {
    callback(param, true);
}

//自定义通知事件
- (void)fireEvent:(NSString *)eventName params:(NSDictionary *)params domChanges:(nullable NSDictionary *)domChanges {
    
}

@end
