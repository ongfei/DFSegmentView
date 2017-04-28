//
//  ViewController.m
//  DFSegmentView
//
//  Created by df on 2017/4/28.
//  Copyright © 2017年 df. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>

#import "DFSegement/DFSegmentView.h"
#import "DFSegmentBaseController.h"

@interface ViewController ()<DFSegmentViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DFSegmentView *segment = [DFSegmentView new];
    
    segment.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:segment];
    
    [segment mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(64);
        make.left.right.bottom.equalTo(self.view);
    }];
    
    segment.delegate = self;

}

- (NSArray *)titlesForDFSegmentViewHeadView {
    
    return @[@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你"];
}

- (UIViewController *)superViewController {
    
    return self;
}

- (UIViewController *)subViewControllerWithIndex:(NSInteger)index {
    
    DFSegmentBaseController *baseVC = [DFSegmentBaseController new];
    
    baseVC.index = [NSString stringWithFormat:@"第%ld页",index];
    
    return baseVC;
}


@end
