//
//  UIViewController+TLExtension.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "UIViewController+TLExtension.h"
#import <objc/runtime.h>

static NSDictionary *AttributeDict;

@implementation UIViewController (TLExtension)
- (void)tl_setAttributeWithDict:(NSDictionary *)dict {
    AttributeDict   = dict;
    objc_setAssociatedObject(self, &AttributeDict, dict, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSDictionary *)tl_getAttributeDict {
    return objc_getAssociatedObject(self, &AttributeDict);
}
@end
