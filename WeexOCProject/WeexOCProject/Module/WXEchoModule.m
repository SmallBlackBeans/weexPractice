//
//  WXEchoModule.m
//  WeexOCProject
//
//  Created by 韩承海 on 2017/11/30.
//  Copyright © 2017年 韩小醋. All rights reserved.
//

#import "WXEchoModule.h"



@implementation WXEchoModule

@synthesize weexInstance;//每个moudle对象被绑定到一个指定的实例上

//事件回调
WX_EXPORT_METHOD(@selector(echo: callback:))
- (void)echo:(NSString *)param callback:(WXModuleKeepAliveCallback)callback {
    callback(param, true);
}

WX_EXPORT_METHOD(@selector(openURL:callback:))
- (void)openURL:(NSString *)url callback:(WXModuleCallback)callback {
    NSString * newUrl = url;
    if ([url hasPrefix:@"//"]) {
        newUrl = [NSString stringWithFormat:@"http:%@",url];
    }else if(![url hasPrefix:@"http"]){
        newUrl = [NSURL URLWithString:url relativeToURL:weexInstance.scriptURL].absoluteString;
    }
    UIViewController * controller = [[UIViewController alloc] init];
    [[weexInstance.viewController navigationController] pushViewController:controller animated:YES];
    callback(@{@"result":@"success"});
}



//暴露同步方法 js 可以同步获取到结果
WX_EXPORT_METHOD_SYNC(@selector(getSomething))
- (NSString *)getSomething{
    return @"hahah";
}




//自定义通知事件
- (void)fireEvent:(NSString *)eventName params:(NSDictionary *)params domChanges:(nullable NSDictionary *)domChanges {
    
}


//指定方法执行的线程，默认是主线程
- (NSThread *)targetExecuteThread {
    return [NSThread currentThread];
}

@end
