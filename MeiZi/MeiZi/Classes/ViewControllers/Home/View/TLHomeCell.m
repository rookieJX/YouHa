//
//  TLHomeCell.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "TLHomeCell.h"
#import "TLToastButton.h"

@interface TLHomeCell ()
/** 更多按钮 */
@property (weak, nonatomic) UIButton *moreButton;
@end


@implementation TLHomeCell

#pragma mark - Private Meths
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self seetupMoreButton];
    }
    return self;
}

- (void)seetupMoreButton {
    TLToastButton *moreButton    = [[TLToastButton alloc] initWithSuperView:self];
    moreButton.backgroundColor  = TLTintColor;
    [moreButton addTarget:self action:@selector(moreButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:moreButton];
    self.moreButton = moreButton;
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

#pragma mark - SubViews
- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat w = self.frameWidth;
    
    // moreButton
    CGFloat moreW   = 100.0f;
    CGFloat moreH   = 40.0f;
    CGFloat moreX   = w - moreW;
    self.moreButton.frame   = CGRectMake(moreX, 0, moreW, moreH);
}

#pragma mark - Target
- (void)moreButtonClick:(TLToastButton *)button {
    [button show];
}

@end
