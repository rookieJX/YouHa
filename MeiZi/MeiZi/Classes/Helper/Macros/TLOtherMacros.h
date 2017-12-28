//
//  TLOtherMacros.h
//  TLBasicDev
//
//  Created by 宋俊红 on 17/1/23.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#ifndef TLOtherMacros_h
#define TLOtherMacros_h

#pragma mark - 通用宏

/**
 对自己的弱引用，一般用在block里面，避免造成循环引用

 @param weakSelf self
 @return 对自己弱引用的指针
 */
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

/**
 app代理
 */
#define TL_ShareAppDelegate   (AppDelegate *)[[UIApplication sharedApplication] delegate]

/**
 主窗口
 */
#define TL_KeyWindow [UIApplication sharedApplication].keyWindow
#endif /* TLOtherMacros_h */
