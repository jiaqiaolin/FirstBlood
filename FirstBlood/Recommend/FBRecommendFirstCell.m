//
//  FBRecommendFirstCell.m
//  FirstBlood
//
//  Created by 林佳乔 on 16/4/19.
//  Copyright © 2016年 林佳乔. All rights reserved.
//

#import "FBRecommendFirstCell.h"
#import "FBRecommendFirstCellView.h"
#define FB_RECOMMEND_GAP FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH/4
@interface FBRecommendFirstCell ()

/** scrollView*/
@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation FBRecommendFirstCell

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.contentView addSubview:self.scrollView];

}

- (void)tapGesture:(UITapGestureRecognizer *)tapGesture
{
   NSInteger index = [self.scrollView.subviews indexOfObject:tapGesture.view];
    self.block(index);
}

- (UIScrollView *)scrollView
{
    if (_scrollView == nil)
    {
        _scrollView = [[UIScrollView alloc] initWithFrame:self.contentView.frame];
        NSArray *titleArray = @[@"一人食",@"约会",@"聚会",@"商务餐",@"闺蜜",@"周末",@"冬日暖"];
        for (int i = 0; i < 7; i++)
        {
            FBRecommendFirstCellView *FBFCV = [[FBRecommendFirstCellView alloc] initWithFrame:CGRectMake(20 + i * (FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH + FB_RECOMMEND_GAP), 20, FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH, FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH + 20)];
            FBFCV.label.text = titleArray[i];
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"recommend0%d",i+1]];
            [FBFCV.imageView setImage:image];
            UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesture:)];
            [FBFCV addGestureRecognizer:tapGesture];
            [_scrollView addSubview:FBFCV];
            _scrollView.showsHorizontalScrollIndicator = NO;
            
        }
        [_scrollView setContentSize:CGSizeMake(2 * 20 + 6 * FB_RECOMMEND_GAP + 7 * FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH, 0)];
    }
    return _scrollView;
}



@end
