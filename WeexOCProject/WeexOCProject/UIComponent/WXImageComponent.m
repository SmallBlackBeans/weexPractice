//
//  WXImageComponent.m
//  WeexOCProject
//
//  Created by 韩承海 on 2017/12/1.
//  Copyright © 2017年 韩小醋. All rights reserved.
//

#import "WXImageComponent.h"

@implementation WXImageComponent

- (instancetype)initWithRef:(NSString *)ref type:(NSString *)type styles:(NSDictionary *)styles attributes:(NSDictionary *)attributes events:(NSArray *)events weexInstance:(WXSDKInstance *)weexInstance {
    if (self = [super initWithRef:ref type:type styles:styles attributes:attributes events:events weexInstance:weexInstance]) {
        _imageScr = [WXConvert NSString:attributes[@"src"]];
        _resizeMode = [WXConvert UIViewContentMode:attributes[@"resize"]];
    }
    return self;
}

//完成布局时候
- (void)layoutDidFinish {
    
}

//创建组件管理的view
- (UIView *)loadView {
    return [UIView new];
}

//更新style的时候
- (void)updateStyles:(NSDictionary *)styles {
    
}

//加载完成的时候
- (void)viewDidLoad {
    UIImageView * imageView = (UIImageView *)self.view;
    imageView.contentMode = _resizeMode;
    imageView.userInteractionEnabled = YES;
    imageView.clipsToBounds = YES;
    imageView.exclusiveTouch = YES;
    
    
    //
}


//当属性更新的时候  比如src 更新了
-(void)updateAttributes:(NSDictionary *)attributes {
    if (attributes[@"src"]) {
        _imageScr = [WXConvert NSString:attributes[@"src"]];
    }
    
    if (attributes[@"resize"]) {
        _resizeMode = [WXConvert UIViewContentMode:attributes[@"resize"]];
        self.view.contentMode = _resizeMode;
    }
}



@end
