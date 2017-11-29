//
//  WXButton.h
//  WeexOCProject
//
//  Created by 韩承海 on 2017/11/29.
//  Copyright © 2017年 韩小醋. All rights reserved.
//

#import <WeexSDK/WeexSDK.h>

//自定义组件提供给wx
@interface WXButton : WXComponent

/** 标题 */
@property (nonatomic, copy) NSString * title;

@property (nonatomic, copy) UIButton * innerButton;


@end
