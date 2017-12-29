//
//  TLToastButton.m
//  MeiZi
//
//  Created by TLWL on 2017/12/28.
//  Copyright © 2017年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "TLToastButton.h"

@interface TLToastButton ()
/** 当前界面 */
@property (strong, nonatomic) UIView * currentView;
/** 当前背景 */
@property (strong, nonatomic) UIView * menuBackGroundView;
@end


@implementation TLToastButton
- (instancetype)initWithSuperView:(UIView *)superView {
    self = [TLToastButton buttonWithType:UIButtonTypeCustom];
    if (self) {
        
    }
    return self;
}

- (UIView *)menuBackGroundView {
    if (_menuBackGroundView == nil) {
        _menuBackGroundView = [[UIView alloc] initWithFrame:CGRectZero];
        _menuBackGroundView.clipsToBounds   = YES;
        _menuBackGroundView.alpha   = 1.0;
        _menuBackGroundView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.6];
        UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(menuBackGroundViewTap)];
        [_menuBackGroundView addGestureRecognizer:tap];
    }
    return _menuBackGroundView;
}

- (UIView *)currentView {
    if (_currentView == nil) {
        _currentView    = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 30.0)];
        _currentView.backgroundColor    = [UIColor whiteColor];
        [self.menuBackGroundView addSubview:_currentView];
    }
    return _currentView;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.menuBackGroundView.frame   = SCREEN_BOUNDS;
}
#pragma mark - Target
- (void)menuBackGroundViewTap {
    [self hide];
}
#pragma mark - Class Meths
- (void)show {
    CGRect rect = [self.superview convertRect:self.frame toView:TL_Winow];
    [TL_Winow addSubview:self.menuBackGroundView];
    [UIView animateWithDuration:1.5 delay:0.0 usingSpringWithDamping:0.7 initialSpringVelocity:0.5 options:kNilOptions animations:^{
        self.menuBackGroundView.alpha = 1;
        CGRect frame = self.currentView.frame;
        frame.origin.y  = rect.origin.y+rect.size.height;
        self.currentView.frame  = frame;
    } completion:nil];
}

- (void)hide {
    [UIView animateWithDuration:1.0 animations:^{
        self.menuBackGroundView.alpha = 0;
    } completion:^(BOOL finished) {
        CGRect frame = self.currentView.frame;
        frame.origin.y  = 0.0f;
        self.currentView.frame  = frame;
        [self.menuBackGroundView removeFromSuperview];
    }];
}
@end
