//
//  WXButton.m
//  WeexOCProject
//
//  Created by 韩承海 on 2017/11/29.
//  Copyright © 2017年 韩小醋. All rights reserved.
//

#import "WXButton.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@implementation WXButton
//
//+ (void)load {
//    [WXSDKEngine registerComponent:@"weex-button" withClass:NSClassFromString(@"WXButton")];
//}
- (instancetype)initWithRef:(NSString *)ref type:(NSString *)type styles:(NSDictionary *)styles attributes:(NSDictionary *)attributes events:(NSArray *)events weexInstance:(WXSDKInstance *)weexInstance {
    if (self) {
        //获取we页面中标签中的属性
        self.title = [WXConvert NSString:attributes[@"title"]];
    }
    return  self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.innerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.innerButton.frame = self.view.bounds;
    [self.view addSubview:self.innerButton];
    
    [self.innerButton setTitle:_title forState:UIControlStateNormal];
    [self.innerButton addTarget:self action:@selector(onButtonClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onButtonClick:(UIButton *)btn {
    NSLog(@"点击了");
}



@end
