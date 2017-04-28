//
//  DFSegmentHeadView.h
//  SinoCommunity
//
//  Created by df on 2017/4/28.
//  Copyright © 2017年 df. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry.h>

#define ScreenWidth ([[UIScreen mainScreen] bounds].size.width)

@protocol DFSegmentHeadViewDelegate <NSObject>

@required
- (NSInteger)dfSegmentNumber;
- (CGSize)dfSegmentItemSimeWithIndex:(NSInteger)index;
- (void)selectWithIndex:(NSInteger)index;
- (NSString *)textForCellWithIndex:(NSInteger)index;

@end
@interface DFSegmentHeadView : UIView

@property (nonatomic, weak) id<DFSegmentHeadViewDelegate> delegate;

@property (nonatomic, copy) UIColor *textLabelColor;

@property (nonatomic, copy) UIColor *linelColor;

- (void)setSelectItemWithIndex:(NSInteger)index;

@end

@interface DFSegmentViewCell : UICollectionViewCell

@property (nonatomic, strong) UILabel *labelText;

@property (nonatomic, strong) UIView *lineView;

@end