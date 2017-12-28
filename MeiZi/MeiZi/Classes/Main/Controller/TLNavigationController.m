
//
//  TLNavigationController.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "TLNavigationController.h"

@interface TLNavigationController ()

@end

@implementation TLNavigationController

// 当第一次调用这个类的时候会调用一次
+ (void)initialize {
    [self setupBarButtonItem];
    [self setupNavigationBarTheme];
    
}

// 设置UIBarButtonItem的主题
+ (void)setupBarButtonItem {
    // 通过appearance对象能够修改项目所有的UIBarButtonItem的样式
    UIBarButtonItem *appearance = [UIBarButtonItem appearance];
    
    // 设置普通文本的样式属性
    NSMutableDictionary *nomalTextAttrs = [NSMutableDictionary dictionary];
    nomalTextAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    nomalTextAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14.0f];
    [appearance setTitleTextAttributes:nomalTextAttrs forState:UIControlStateNormal];
    
    // 设置高亮状态下的文本样式
    NSMutableDictionary *highTextAttrs = [NSMutableDictionary dictionary];
    highTextAttrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    highTextAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14.0f];
    [appearance setTitleTextAttributes:highTextAttrs forState:UIControlStateHighlighted];
    
    // 设置禁用状态下的文本样式
    NSMutableDictionary *disableTextAttrs = [NSMutableDictionary dictionary];
    disableTextAttrs[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    disableTextAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14.0f];
    [appearance setTitleTextAttributes:disableTextAttrs forState:UIControlStateHighlighted];
    
}

// 设置导航栏的主题
+ (void)setupNavigationBarTheme {
    
    UINavigationBar *appearance = [UINavigationBar appearance];
    [appearance setBackgroundImage:[UIImage imageNamed:@"navigationbar_background"] forBarMetrics:UIBarMetricsDefault];
    NSMutableDictionary *enableTextAttrs = [NSMutableDictionary dictionary];
    enableTextAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:18.0f];
    enableTextAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    [appearance setTitleTextAttributes:enableTextAttrs];
    
}

@end
