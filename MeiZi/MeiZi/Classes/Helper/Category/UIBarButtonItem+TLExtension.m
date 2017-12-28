//
//  UIBarButtonItem+TLExtension.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "UIBarButtonItem+TLExtension.h"

@implementation UIBarButtonItem (TLExtension)
+ (UIBarButtonItem *)tl_itemWithImageName:(NSString *)imageName
                         highImageName:(NSString *)highImageName
                                target:(id)target
                                action:(SEL)action {
    // 创建导航栏
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    // 创建正常状态下按钮
    UIImage *image = [UIImage imageNamed:imageName];
    [button setImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
            forState:UIControlStateNormal];
    
    // 创建选中状态下按钮
    UIImage *highImage  = [UIImage imageNamed:highImageName];
    [button setImage:[highImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
            forState:UIControlStateHighlighted];
    
    // 设置按钮的尺寸为背景图片的尺寸
    CGRect frame = button.frame;
    frame.size  = button.currentImage.size;
    button.frame    = frame;
    
    // 监听按钮的点击
    [button addTarget:target
               action:action
     forControlEvents:UIControlEventTouchDown];
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

+ (UIBarButtonItem *)tl_itemWithTitle:(NSString *)title  style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action {
    
    // 创建按钮
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    // 创建正常状态下的文字
    [button setTitle:title
            forState:UIControlStateNormal];
    
    // 创建正常状态下的文字
    [button setTitleColor:[UIColor blackColor]
                 forState:UIControlStateNormal];
    
    // 正常状态下的文字尺寸
    button.titleLabel.font = [UIFont systemFontOfSize:14];
    
    // 选中状态下的文字颜色
    [button setTitleColor:[UIColor lightGrayColor]
                 forState:UIControlStateHighlighted];
    
    // 禁用状态下的文字颜色
    [button setTitleColor:[UIColor lightGrayColor]
                 forState:UIControlStateDisabled];
    
    // 文字自适应
    [button sizeToFit];
    
    // 监听方法
    [button addTarget:target
               action:action
     forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}
@end
