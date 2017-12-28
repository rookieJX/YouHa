//
//  UIImage+TLExtension.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "UIImage+TLExtension.h"

@implementation UIImage (TLExtension)
+ (UIImage *)tl_originalImageWithImageName:(NSString *)imageName {
    
    UIImage * image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
}

+ (UIImage *)tl_resizedImage:(NSString *)imageName {
    
    UIImage * image = [UIImage tl_originalImageWithImageName:imageName];
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5
                                      topCapHeight:image.size.height * 0.5];
    
}
@end
