//
//  CyclePhotoView.h
//  无限轮播3张版
//
//  Created by 林佳乔 on 16/4/5.
//  Copyright © 2016年 林佳乔. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FBCarouselView : UIView

- (_Nonnull instancetype)initWithFrame:(CGRect)frame imageArray:(nonnull NSMutableArray<UIImage*> *)array;

@end
