//
//  NSString+TLExtension.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "NSString+TLExtension.h"

@implementation NSString (TLExtension)
+ (CGFloat)tl_stringWidthFromString:(NSString *)string height:(CGFloat)height fontSize:(UIFont *)font {
    if ([self tl_isEmpty:string]) return 0.0;
    NSDictionary *dict = @{NSFontAttributeName : font};
    CGRect rect = [string boundingRectWithSize:CGSizeMake(MAXFLOAT, height) options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
    return rect.size.width;
}

+ (CGFloat)tl_stringHeightFromString:(NSString *)string width:(CGFloat)width fontSize:(UIFont *)font {
    if ([self tl_isEmpty:string]) return 0.0;
    NSDictionary *dict = @{NSFontAttributeName : font};
    CGRect rect = [string boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
    return rect.size.height;
}

+ (BOOL)tl_isEmpty:(NSString *)string {
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    if ([string isEqualToString:@"null"]) {
        return YES;
    }
    if ([string isEqualToString:@"(null)"]) {
        return YES;
    }
    if ([string isEqualToString:@"<null>"]) {
        return YES;
    }
    if ([string isEqualToString:@" "]) {
        return YES;
    }
    if ([string isEqualToString:@""]) {
        return YES;
    }
    return NO;
}

+ (BOOL)tl_identityCardValidate:(NSString *)identityCard {
    if ([self tl_isEmpty:identityCard]) return NO;
    NSString *regex2 = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [identityCardPredicate evaluateWithObject:identityCard];
}

+ (BOOL)tl_emailValidate:(NSString *)email {
    if ([self tl_isEmpty:email]) return NO;
    NSString *regex2 = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [emailCardPredicate evaluateWithObject:email];
}
@end
