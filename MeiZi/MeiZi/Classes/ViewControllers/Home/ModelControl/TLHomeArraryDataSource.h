//
//  TLHomeArraryDataSource.h
//  MeiZi
//
//  Created by TLWL on 2018/1/5.
//  Copyright © 2018年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^HomeTableViewCellConfigureBlock)(id cell,id item);

@interface TLHomeArraryDataSource : NSObject<UITableViewDataSource>


- (instancetype)initWithCellIdentifier:(NSString *)aIdentifier
                    configureCellBlock:(HomeTableViewCellConfigureBlock)aConfigureCellBlock;

- (void)setTableViewDataSourceWithArray:(NSArray *)items;
@end
