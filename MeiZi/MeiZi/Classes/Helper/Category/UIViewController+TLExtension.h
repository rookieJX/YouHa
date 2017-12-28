//
//  UIViewController+TLExtension.h
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (TLExtension)

/**
 控制器添加属性

 @param dict 属性字典
 */
- (void)tl_setAttributeWithDict:(NSDictionary *)dict;

/**
 获取控制器添加的属性

 @return 属性字典
 */
- (NSDictionary *)tl_getAttributeDict;
@end
