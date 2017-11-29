//
//  ViewController.m
//  WeexOCProject
//
//  Created by 韩承海 on 2017/11/29.
//  Copyright © 2017年 韩小醋. All rights reserved.
//

#import "ViewController.h"
#import <WeexSDK/WXSDKInstance.h>
@interface ViewController ()

@property (nonatomic, weak) WXSDKInstance * instance;

@property (nonatomic, weak) UIView * weexView;


@property (nonatomic, strong) NSURL * url;

@end

@implementation ViewController

///渲染 weex Instance
- (void)viewDidLoad {
    [super viewDidLoad];
    
    WXSDKInstance * instance = [[WXSDKInstance alloc] init];
    _instance = instance;
    _instance.viewController = self;
    _instance.frame = self.view.bounds;
    
    
    __weak typeof(self) weakSelf = self;
    _instance.onCreate = ^(UIView *view) {
        [weakSelf.weexView removeFromSuperview];
        self.weexView = view;
        [weakSelf.view addSubview:weakSelf.weexView];
    };
    
    _instance.onFailed = ^(NSError *error) {
        
    };
    
    _instance.renderFinish = ^(UIView *view) {
        
    };
    
    NSURL * url = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"js"];
    [_instance renderWithURL:url options:@{@"bundleUrl":[self.url absoluteString]} data:nil];
    
}

///销毁 Weex Instance
- (void)dealloc {
    [_instance destroyInstance];
}


@end
