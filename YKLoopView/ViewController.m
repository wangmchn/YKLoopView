//
//  ViewController.m
//  YKLoopView
//
//  Created by Mark on 15/3/30.
//  Copyright (c) 2015年 yq. All rights reserved.
//

#import "ViewController.h"
#import "YKLoopView.h"
@interface ViewController () <YKLoopViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *images = @[@"1.jpg",@"2.jpg",@"3.jpg",@"2.jpg",@"3.jpg",@"3.jpg"];
    CGRect frame = CGRectMake(0, 0, self.view.bounds.size.width, 105);
    YKLoopView *loopView = [[YKLoopView alloc] initWithFrame:frame images:images autoPlay:YES delay:5.0];
    loopView.delegate = self;
    [self.view addSubview:loopView];
}
- (void)loopViewDidSelectedImage:(YKLoopView *)loopView index:(int)index{
    NSLog(@"%d",index);
}

@end
