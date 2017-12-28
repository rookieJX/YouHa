//
//  UIBarButtonItem+TLExtension.h
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (TLExtension)
/**
 *  快速设置导航栏上图片
 *
 *  @param imageName     图片名称
 *  @param highImageName 选中图片名称
 *  @param target        目标函数
 *  @param action        方法名
 *
 *  @return 返回导航栏按钮
 */
+ (UIBarButtonItem *)tl_itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName target:(id)target action:(SEL)action;

/**
 *  快速设置导航栏上文字
 *
 *  @param title  导航栏文字
 *  @param style  文字样式
 *  @param target 目标函数
 *  @param action 方法名称
 *
 *  @return 返回导航栏按钮
 */
+ (UIBarButtonItem *)tl_itemWithTitle:(NSString *)title  style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action;
@end
