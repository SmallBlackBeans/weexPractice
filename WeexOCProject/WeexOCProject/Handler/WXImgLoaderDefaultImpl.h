//
//  WXImgLoaderDefaultImpl.h
//  WeexOCProject
//
//  Created by 韩承海 on 2017/11/29.
//  Copyright © 2017年 韩小醋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WeexSDK/WeexSDK.h>

//WeexSDK kernel 本身没有提供图片下载的默认实现
@interface WXImgLoaderDefaultImpl : NSObject<WXImgLoaderProtocol, WXModuleProtocol>

@end
