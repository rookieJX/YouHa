//
//  TLTabBarController.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "TLTabBarController.h"
#import "TLDiscoveryViewController.h"
#import "TLHomeViewController.h"
#import "TLMessageViewController.h"
#import "TLProfileViewController.h"
#import "TLTabBar.h"

@interface TLTabBarController ()

@end

@implementation TLTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar.barStyle = UIBarStyleBlack;
    self.tabBar.tintColor   = [UIColor blackColor];
    [self setupAllChildVc];
    
}

/**
 *  创建子控制器
 */
- (void)setupAllChildVc {
    TLHomeViewController * home = [[TLHomeViewController alloc] init];
    [self addOneChildVc:home
                  title:@"痛快开始"
              imageName:@"TabBar_Home_nomal"
        selectImageName:@"TabBar_Home_select"
       selectTitleColor:TLTintColor];
    
    TLMessageViewController * message = [[TLMessageViewController alloc] init];
    [self addOneChildVc:message
                  title:@"开心一下"
              imageName:@"TabBar_Happy_nomal"
        selectImageName:@"TabBar_Happy_select"
       selectTitleColor:TLTintColor];
    
    TLDiscoveryViewController * discover = [[TLDiscoveryViewController alloc] init];
    [self addOneChildVc:discover
                  title:@"休息一下"
              imageName:@"TabBar_Rest_nomal"
        selectImageName:@"TabBar_Rest_select"
       selectTitleColor:TLTintColor];
    
    TLProfileViewController * me = [[TLProfileViewController alloc] init];
    [self addOneChildVc:me
                  title:@"世界广阔"
              imageName:@"TabBar_Centren_nomal"
        selectImageName:@"TabBar_Centren_select"
       selectTitleColor:TLTintColor];
    
    // 替换系统的TabBar
    TLTabBar *customerTabBar = [[TLTabBar alloc] init];
    customerTabBar.frame = self.tabBar.bounds;
    [self setValue:customerTabBar forKeyPath:@"tabBar"];
}

/**
 *  添加一个子控制器
 *
 *  @param childVc          子控制器对象
 *  @param title            标题
 *  @param imageName        图片
 *  @param selectImageName  选中图片
 *  @param selectTitleColor 选中图片颜色
 */
- (void)addOneChildVc:(UIViewController *)childVc
                title:(NSString *)title
            imageName:(NSString *)imageName
      selectImageName:(NSString *)selectImageName
     selectTitleColor:(UIColor *)selectTitleColor{
    
    // 这里设置随机色，表明一创建就已经访问了四个控制器，说明四个控制器都已经创建，很消耗内存
    childVc.tabBarItem.title = title;
    childVc.tabBarItem.image = [UIImage tl_originalImageWithImageName:imageName];
    childVc.tabBarItem.selectedImage = [UIImage tl_originalImageWithImageName:selectImageName];
    NSMutableDictionary * dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = selectTitleColor;
    [childVc.tabBarItem setTitleTextAttributes:dict forState:UIControlStateSelected];
    [self addChildViewController:childVc];
}


@end
