//
//  DFSegmentBaseController.m
//  SinoCommunity
//
//  Created by df on 2017/4/28.
//  Copyright © 2017年 df. All rights reserved.
//

#import "DFSegmentBaseController.h"

@interface DFSegmentBaseController ()

@end

@implementation DFSegmentBaseController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1];
    
    UILabel *label = [UILabel new];
    
    [self.view addSubview:label];
    
    label.frame = CGRectMake(100, 200, 100, 100);
    
    label.text = self.index;
}

@end
