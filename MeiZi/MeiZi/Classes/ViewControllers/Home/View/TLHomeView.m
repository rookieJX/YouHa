//
//  TLHomeView.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "TLHomeView.h"

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
    TableView.delegate  = self;
    TableView.dataSource = self;
    [self addSubview:TableView];
}

#pragma mark - UITableViewDelegate && DataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 10;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.backgroundColor = kRandColor;
    }
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100.0f;
}
@end