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

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
//        [self.contentView setBackgroundColor:[UIColor greenColor]];
        
    }
    return self;
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.contentView addSubview:self.scrollView];
}

- (UIScrollView *)scrollView
{
    if (_scrollView == nil)
    {
        _scrollView = [[UIScrollView alloc] initWithFrame:self.contentView.frame];
        for (int i = 0; i < 7; i++)
        {
            FBRecommendFirstCellView *FBFCV = [[FBRecommendFirstCellView alloc] initWithFrame:CGRectMake(20 + i * (FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH + FB_RECOMMEND_GAP), 20, FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH, FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH + 20)];
            [_scrollView addSubview:FBFCV];
        }
        [_scrollView setContentSize:CGSizeMake(2 * 20 + 6 * FB_RECOMMEND_GAP + 7 * FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH, 0)];
    }
    return _scrollView;
}

@end
