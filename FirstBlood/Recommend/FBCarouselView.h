//
//  CyclePhotoView.h
//  无限轮播3张版
//
//  Created by 林佳乔 on 16/4/5.
//  Copyright © 2016年 林佳乔. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^carouseViewBlock)(NSInteger currentIndex);
@interface FBCarouselView : UIView
/** block*/
@property (nonatomic, copy) carouseViewBlock block;
- (instancetype)initWithFrame:(CGRect)frame imageArray:(NSMutableArray<UIImage*> *)array returnBlock:(carouseViewBlock)block;

@end
