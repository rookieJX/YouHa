//
//  TLLayoutSizeMacros.h
//  TLBasicDev
//
//  Created by 宋俊红 on 17/1/23.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#ifndef TLLayoutSizeMacros_h
#define TLLayoutSizeMacros_h
#pragma mark -----------------------------------------尺寸大小--------------------------------------------

/**
 屏幕的分辨率（是指一个物理相位上有几个逻辑像素点）
 */
#define UI_SCREEN_SCALE         [[UIScreen mainScreen] scale]

/**
 屏幕的主界面
 */
#define TL_Winow                [UIApplication sharedApplication].keyWindow

/**
 屏幕的宽度

 @return 屏宽
 */
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

/**
 屏幕的高度

 @return 屏高
 */
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height


/**
 屏幕尺寸

 @return 尺寸
 */
#define SCREEN_BOUNDS [UIScreen mainScreen].bounds

/**
 tabbar 的高度

 @return 49
 */
#define TABBAR_HEIGHT  49

/**
 状态栏的高度

 @return 20
 */
#define STATUSBAR_HEIGHT 20

/**
 导航栏的高度

 @return 49
 */
#define NAVBAR_HEIGHT  44



#endif /* TLLayoutSizeMacros_h */
