//
//  WXImgLoaderDefaultImpl.h
//  WeexOCProject
//
//  Created by 韩承海 on 2017/11/29.
//  Copyright © 2017年 韩小醋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WeexSDK/WeexSDK.h>

//weex中没有直接下载图片的方法，所以需要进行以下操作。
@interface WXImgLoaderDefaultImpl : NSObject<WXImgLoaderProtocol, WXModuleProtocol>

@end
