//
//  TLHomeCell.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "TLHomeCell.h"

@implementation TLHomeCell

#pragma mark - Private Meths
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}

#pragma mark - Class Meths
+ (instancetype)createCellWithTableView:(UITableView *)tableView {
    static NSString *HomeCellIdentifier = @"HomeCellIdentifier";
    TLHomeCell *cell = [tableView dequeueReusableCellWithIdentifier:HomeCellIdentifier];
    if (!cell) {
        cell = [[TLHomeCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:HomeCellIdentifier];
    }
    return cell;
}



@end
