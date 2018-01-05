//
//  TLTabBar.m
//  MeiZi
//
//  Created by TLWL on 2018/1/3.
//  Copyright © 2018年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "TLTabBar.h"

@interface TLTabBar ()
/** 中间按钮 */
@property (strong, nonatomic) UIButton * centerButton;

@end


@implementation TLTabBar

#pragma mark - Private Meths
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}

- (void)initView {
    UIButton *centerButton  = [UIButton buttonWithType:UIButtonTypeCustom];
    [centerButton setImage:[UIImage tl_originalImageWithImageName:@"TabBar_center_nomal"] forState:UIControlStateNormal];
    [centerButton setImage:[UIImage tl_originalImageWithImageName:@"TabBar_center_select"] forState:UIControlStateSelected];
    [centerButton addTarget:self action:@selector(centerButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:centerButton];
    self.centerButton   = centerButton;
}

#pragma mark - Target
- (void)centerButtonClick:(UIButton *)sender {
    self.centerButton.selected  = !self.centerButton.isSelected;
}

#pragma mark - 布局
- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat w = self.frameWidth / 5;
    CGFloat h = self.frameHeight;
    
    int index = 0;
    
    for (UIView *tabBarView in self.subviews) {
        if (![tabBarView isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        
        tabBarView.frameWidth = w;
        tabBarView.frameHeight = h;
        tabBarView.frameY = 0;
        tabBarView.frameX = w * index;
        
        if (index >= 2) {
            tabBarView.frameX += w;
        }
        
        index ++;
    }
    
    // 中间按钮尺寸
    self.centerButton.frameSize = CGSizeMake(w, 2*h);
    self.centerButton.frameCenterX = self.frameWidth * 0.5;
    self.centerButton.frameCenterY = self.frameHeight * 0.01;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *view = [super hitTest:point withEvent:event];
    if (view == nil) {
        CGPoint tempPoint = [self convertPoint:point toView:self.centerButton];
        if (CGRectContainsPoint(self.centerButton.bounds, tempPoint)) {
            return self.centerButton;
        }
    }
    return view;
    
}
@end
