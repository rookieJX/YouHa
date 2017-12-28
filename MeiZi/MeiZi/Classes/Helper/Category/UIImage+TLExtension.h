//
//  UIImage+TLExtension.h
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TLExtension)
/**
 *  可以获得图片为原图，不需要系统渲染
 *
 *  @param imageName 图片名称
 *
 *  @return 返回原始图片
 */
+ (UIImage *)tl_originalImageWithImageName:(NSString *)imageName;

/**
 *  根据图片名返回自由拉伸的图片
 *
 *  @param imageName 图片名
 *
 *  @return 拉伸后的图片
 */
+ (UIImage *)tl_resizedImage:(NSString *)imageName;

@end
