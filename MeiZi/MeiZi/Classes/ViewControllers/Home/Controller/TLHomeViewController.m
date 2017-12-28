//
//  TLHomeViewController.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "TLHomeViewController.h"
#import "TLHomeView.h"

@interface TLHomeViewController ()

@end

@implementation TLHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupNavigation];
    [self setupHomeView];
}

#pragma mark - UI Meths
- (void)setupNavigation {
    self.tabBarController.navigationItem.title = @"首页";
}

- (void)setupHomeView {
    TLHomeView *homeView = [[TLHomeView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT-TABBAR_HEIGHT)];
    [self.view addSubview:homeView];
}

@end
