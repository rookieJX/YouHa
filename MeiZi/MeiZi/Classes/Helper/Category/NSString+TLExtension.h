//
//  NSString+TLExtension.h
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (TLExtension)

/**
 根据宽度确定文字最大高度

 @param string 文字内容
 @param width 宽度
 @param font 字体大小
 @return 文字高度
 */
+ (CGFloat)tl_stringHeightFromString:(NSString *)string width:(CGFloat)width fontSize:(UIFont *)font;

/**
 根据高度确定文字最大宽度

 @param string 文字内容
 @param height 高度
 @param font 字体大小
 @return 文字高度
 */
+ (CGFloat)tl_stringWidthFromString:(NSString *)string height:(CGFloat)height fontSize:(UIFont *)font;

/**
 判断字符串是否为空

 @param string 字符串
 @return 结果
 */
+ (BOOL)tl_isEmpty:(NSString *)string;

/**
 判断是否为身份证号码

 @param identityCard 身份证号码
 @return 结构
 */
+ (BOOL)tl_identityCardValidate:(NSString *)identityCard;


/**
 判断邮箱是否有效

 @param email 邮箱
 @return 结构
 */
+ (BOOL)tl_emailValidate:(NSString *)email;
@end
