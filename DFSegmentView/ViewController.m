//
//  ViewController.m
//  DFSegmentView
//
//  Created by df on 2017/4/28.
//  Copyright © 2017年 df. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>

#import "DFSegmentView.h"
#import "DFSegmentBaseController.h"

@interface ViewController ()<DFSegmentViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    DFSegmentView *segment = [[DFSegmentView alloc] initWithFrame:CGRectZero andDelegate:self andTitlArr:@[@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你",@"你撒你"]];
    
    DFSegmentView *segment = [DFSegmentView new];
    
    segment.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:segment];
    
    [segment mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(64);
        make.left.right.bottom.equalTo(self.view);
    }];
    
    segment.delegate = self;

    segment.reloadTitleArr = @[@"aaa",@"qqq"];
    [segment reloadData];
}

- (UIViewController *)superViewController {
    
    return self;
}

- (UIViewController *)subViewControllerWithIndex:(NSInteger)index {
/*
    如果有特殊的控制器 可以在这里判断操作
 
    如果这样操作了,获取的时候 就要注意了
 
    if (index == 2) {
        
        SpecificVC *specificVC = [SpecificVC new];
        
        return specificVC;
    }
*/
    
    DFSegmentBaseController *baseVC = [DFSegmentBaseController new];
    
    baseVC.index = [NSString stringWithFormat:@"第%ld页",index];
    
    return baseVC;
}


- (void)headTitleSelectWithIndex:(NSInteger)index {
    
//  在这里可以获取到当前的baseViewController
//  对VC里面进行赋值 调方法进行网络请求或者一些逻辑操作
//  可以在当前控制器增加属性 currentIndex = index 在当前控制器 随时都可以用currentIndex获取到baseViewController
    
    NSLog(@"---%ld",index);
}


@end
