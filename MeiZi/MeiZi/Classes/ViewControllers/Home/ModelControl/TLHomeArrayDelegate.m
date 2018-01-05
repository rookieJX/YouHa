//
//  TLHomeArrayDelegate.m
//  MeiZi
//
//  Created by TLWL on 2018/1/5.
//  Copyright © 2018年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "TLHomeArrayDelegate.h"

@implementation TLHomeArrayDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100.0f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.001f;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.001f;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}

@end
