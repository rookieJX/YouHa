//
//  UIButton+TLExtension.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "UIButton+TLExtension.h"

@implementation UIButton (TLExtension)
- (void)tl_setButtonTitleType:(TLCategoryType)type {
    CGSize titleSize = self.titleLabel.bounds.size;
    CGSize imageSize = self.imageView.bounds.size;
    CGFloat interval = 1.0;
    
    switch (type) {
        case TLCategoryTypeLeft:  // 文字在左边
        {
            [self setImageEdgeInsets:UIEdgeInsetsMake(0,titleSize.width + interval, 0, -(titleSize.width + interval))];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -(imageSize.width + interval), 0, imageSize.width + interval)];
        }
            break;
        case TLCategoryTypeBottom:  // 文字在下方
        {
            [self setImageEdgeInsets:UIEdgeInsetsMake(0,0, titleSize.height + interval, -(titleSize.width))];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(imageSize.height + interval, -(imageSize.width), 0, 0)];
        }
            break;
        default:
            break;
    }
}

@end
