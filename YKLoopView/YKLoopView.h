//
//  YKLoopView.h
//  YKLoopView
//
//  Created by Mark on 15/3/30.
//  Copyright (c) 2015年 yq. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YKLoopView;
@protocol YKLoopViewDelegate <NSObject>
- (void)loopViewDidSelectedImage:(YKLoopView *)loopView index:(int)index;
@end

@interface YKLoopView : UIView
@property (nonatomic, weak) id delegate;
@property (nonatomic, assign) BOOL autoPlay;
@property (nonatomic, assign) NSTimeInterval timeInterval;
@property (nonatomic, strong) NSArray *images;

- (id)initWithFrame:(CGRect)frame images:(NSArray *)images autoPlay:(BOOL)isAuto delay:(NSTimeInterval)timeInterval;
@end
