//
//  FBRecommendFirstCell.h
//  FirstBlood
//
//  Created by 林佳乔 on 16/4/19.
//  Copyright © 2016年 林佳乔. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^FBRecommendFirstCellBlock)(NSInteger index);

@interface FBRecommendFirstCell : UITableViewCell

/** 回调点击FBRecommendFirstCellView的index*/
@property (nonatomic, copy) FBRecommendFirstCellBlock block;

@end
