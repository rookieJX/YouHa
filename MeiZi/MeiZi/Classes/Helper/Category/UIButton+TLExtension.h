//
//  UIButton+TLExtension.h
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, TLCategoryType) {
    TLCategoryTypeLeft = 101,
    TLCategoryTypeBottom
};

@interface UIButton (TLExtension)

/**
 设置按钮文字位置

 @param type 位置
 */
- (void)tl_setButtonTitleType:(TLCategoryType)type;


@end
