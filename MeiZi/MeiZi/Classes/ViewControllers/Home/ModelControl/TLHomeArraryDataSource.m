//
//  TLHomeArraryDataSource.m
//  MeiZi
//
//  Created by TLWL on 2018/1/5.
//  Copyright © 2018年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "TLHomeArraryDataSource.h"

@interface TLHomeArraryDataSource ()
/** block */
@property (copy, nonatomic) HomeTableViewCellConfigureBlock configureCellBlock;
/** identifier */
@property (copy, nonatomic) NSString * cellIdentifier;
/** 当前数据 */
@property (strong, nonatomic) NSArray * currentItems;
@end


@implementation TLHomeArraryDataSource
- (instancetype)init
{
    return nil;
}

- (instancetype)initWithCellIdentifier:(NSString *)aIdentifier configureCellBlock:(HomeTableViewCellConfigureBlock)aConfigureCellBlock {
    self = [super init];
    if (self) {
        self.cellIdentifier     = aIdentifier;
        self.configureCellBlock = aConfigureCellBlock;
    }
    return self;
}

- (void)setTableViewDataSourceWithArray:(NSArray *)items {
    self.currentItems = items;
}
- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.currentItems[(NSUInteger) indexPath.row];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.currentItems.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell   = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    id item     = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell, item);
    return cell;
}
@end
