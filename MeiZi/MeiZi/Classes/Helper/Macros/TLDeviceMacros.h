//
//  TL_DeviceMacros.h
//  bank94
//
//  Created by Liu Hui on 2017/5/15.
//  Copyright © 2017年 com.hongzhe.tldy. All rights reserved.
//

#ifndef TLDeviceMacros_h
#define TLDeviceMacros_h


#ifdef DEBUG
#define TL_CLog(format, ...)  NSLog(format, ## __VA_ARGS__)
#    define TL_ISDEBUG    1
#else
#define TL_CLog(format,...)
#    define TL_ISDEBUG    0
#endif

#pragma mark----------------------------------设备相关--------------------------------------------------

/**
 *系统信息-
 */
#define CURRENT_SYSTEM_VERSION                           ([[[UIDevice currentDevice] systemVersion] floatValue])
/**
 判断是否是iOS7.0及以上
 */
#define IOS_VERSION_7_OR_ABOVE (([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)? (YES):(NO))
/**
 判断是否是iOS8.0及以上
 */
#define IOS_VERSION_8_OR_ABOVE (([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)? (YES):(NO))
/**
 判断设备是否是横屏
 */
#define UI_IS_LANDSCAPE         ([UIDevice currentDevice].orientation == UIDeviceOrientationLandscapeLeft || [UIDevice currentDevice].orientation == UIDeviceOrientationLandscapeRight)
/**
 判断是否是ipad设备
 */
#define UI_IS_IPAD              ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
/**
 判断是否是iPhone设备
 */
#define UI_IS_IPHONE            ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
/**
 是否是4s的设备（指的是屏幕尺寸）
 */
#define UI_IS_IPHONE4           (UI_IS_IPHONE && [[UIScreen mainScreen] bounds].size.height < 568.0)
/**
 是否是5s的设备（指的是屏幕尺寸）
 */
#define UI_IS_IPHONE5           (UI_IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 568.0)
/**
 是否是6s的设备（指的是屏幕尺寸）
 */
#define UI_IS_IPHONE6           (UI_IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 667.0)
/**
 是否是6sPLUS的设备（指的是屏幕尺寸）
 */
#define UI_IS_IPHONE6PLUS       (UI_IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 736.0 || [[UIScreen mainScreen] bounds].size.width == 736.0) // Both orientations
/**
 当前版本
 */
#define TL_CURRENT_VERSION      [[NSBundle mainBundle].infoDictionary objectForKey:@"CFBundleShortVersionString"]

#endif /* TL_DeviceMacros_h */
