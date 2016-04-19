//
//  FBRecommendFirstCellView.m
//  FirstBlood
//
//  Created by 林佳乔 on 16/4/19.
//  Copyright © 2016年 林佳乔. All rights reserved.
//

#import "FBRecommendFirstCellView.h"
@implementation FBRecommendFirstCellView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH, FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH)];
        [self addSubview:_imageView];
        [_imageView setBackgroundColor:[UIColor redColor]];
        [_imageView setImage:[UIImage imageNamed:@"recommend02"]];
        _label = [[UILabel alloc] initWithFrame:CGRectMake(0, FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH + 5, FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH, 20)];
        [self addSubview:_label];
        [_label setTextAlignment:NSTextAlignmentCenter];
        [_label setText:@"一人食"];
        [_label setFont:[UIFont systemFontOfSize:15.]];
    }
    return self;
}

@end
