//
//  TLDiscoveryViewController.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "TLDiscoveryViewController.h"

@interface TLDiscoveryViewController ()

@end

@implementation TLDiscoveryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 300, 400)];
    backView.backgroundColor = [UIColor redColor];
    [self.view addSubview:backView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame     = CGRectMake(100, 200, 100, 50);
    button.backgroundColor = TLTintColor;
    [backView addSubview:button];
    
    CGRect rect1 = [button convertRect:button.bounds fromView:nil];
    CGRect rect2 = [button convertRect:button.frame fromView:TL_Winow];
    CGRect rect3 = [backView convertRect:button.frame toView:self.view];
    CGRect rect4 = [button convertRect:button.frame toView:nil];
    NSLog(@"1-----%@",NSStringFromCGRect(rect1));
    NSLog(@"2-----%@",NSStringFromCGRect(rect2));
    NSLog(@"3-----%@",NSStringFromCGRect(rect3));
    NSLog(@"4-----%@",NSStringFromCGRect(rect4));
    NSLog(@"UIWindow-----%@",NSStringFromCGRect(TL_Winow.frame));
    NSLog(@"UIView  -----%@",NSStringFromCGRect(self.view.frame));
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        button.frame    = rect4;
    });
}



@end
