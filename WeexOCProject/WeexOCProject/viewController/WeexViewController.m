//
//  WeexViewController.m
//  WeexOCProject
//
//  Created by 韩承海 on 2017/12/1.
//  Copyright © 2017年 韩小醋. All rights reserved.
//

#import "WeexViewController.h"
#import <WeexSDK/WeexSDK.h>
@interface WeexViewController ()

@property (nonatomic, strong) WXSDKInstance * instance;
@end

@implementation WeexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)setUp {
    _instance = [[WXSDKInstance alloc] init];
    __weak typeof(self) weakSelf = self;
    _instance.onCreate = ^(UIView * view) {
        
    };
    
     _instance.onFailed = ^(NSError *error) {
         
     };
    
    
    _instance.viewController = self;
    _instance.frame = [UIScreen mainScreen].bounds;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
