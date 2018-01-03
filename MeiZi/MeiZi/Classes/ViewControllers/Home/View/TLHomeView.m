//
//  TLHomeView.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "TLHomeView.h"
#import "TLHomeCell.h"

@interface TLHomeView ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *TableView;
}
@end


@implementation TLHomeView
#pragma mark - Private Meths
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createTableViewWithFrame:frame];
    }
    return self;
}

- (void)createTableViewWithFrame:(CGRect)frame {
    TableView = [[UITableView alloc] initWithFrame:frame style:UITableViewStyleGrouped];
    TableView.backgroundColor   = [UIColor blackColor];
    TableView.separatorStyle    = UITableViewCellSeparatorStyleNone;
    TableView.delegate  = self;
    TableView.dataSource = self;
    [self addSubview:TableView];
}

#pragma mark - UITableViewDelegate && DataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TLHomeCell *cell = [TLHomeCell createCellWithTableView:tableView];
    return cell;
}
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
