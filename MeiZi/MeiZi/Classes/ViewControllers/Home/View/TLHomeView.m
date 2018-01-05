//
//  TLHomeView.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "TLHomeView.h"
#import "TLHomeCell.h"
#import "TLHomeArraryDataSource.h"
#import "TLHomeArrayDelegate.h"

@interface TLHomeView ()<UITableViewDelegate>
{
    UITableView *TableView;
}
/** 数据源 */
@property (strong, nonatomic) TLHomeArraryDataSource * tableViewDataSource;
/** 代理 */
@property (strong, nonatomic) TLHomeArrayDelegate * tableViewDelegate;
/** homeArray */
@property (strong, nonatomic) NSArray * homeItemArray;
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
    TableView.delegate  = self.tableViewDelegate;
    TableView.dataSource = self.tableViewDataSource;
    [TableView registerClass:[TLHomeCell class] forCellReuseIdentifier:@"HomeIdentifier"];
    [self addSubview:TableView];
}

- (void)setHomeDataWithArray:(NSArray *)items {
    [self.tableViewDataSource setTableViewDataSourceWithArray:items];
    [TableView reloadData];
}
#pragma mark - Getter & Setter
- (TLHomeArraryDataSource *)tableViewDataSource {
    if (_tableViewDataSource == nil) {
        HomeTableViewCellConfigureBlock configureBlock = ^(TLHomeCell *cell,id item){
            cell.backgroundColor = kRandColor;
        };
        _tableViewDataSource = [[TLHomeArraryDataSource alloc] initWithCellIdentifier:@"HomeIdentifier" configureCellBlock:configureBlock];
    }
    return _tableViewDataSource;
}

- (TLHomeArrayDelegate *)tableViewDelegate {
    if (_tableViewDelegate == nil) {
        _tableViewDelegate = [[TLHomeArrayDelegate alloc] init];
    }
    return _tableViewDelegate;
}
@end
