//
//  FBCarouselView.m
//  无限轮播3张版
//
//  Created by 林佳乔 on 16/4/5.
//  Copyright © 2016年 林佳乔. All rights reserved.
//

#import "FBCarouselView.h"

@interface FBCarouselView ()<UIScrollViewDelegate>
/** 轮播底层scrollView*/
@property (nonatomic, strong) UIScrollView *cyclePhotoScrollView;
/** 装Image的数组*/
@property (nonatomic, strong) NSMutableArray *imageArray;
/** 当前imageView显示的图片index*/
@property (nonatomic, assign) NSInteger currentImageIndex;
/** pageControl*/
@property (nonatomic, strong) UIPageControl *pageControl;
/** 实验timer加入runloop后的变化,见66行*/
@property (nonatomic, strong) NSRunLoop *runloop;
/** 定时轮播timer*/
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation FBCarouselView

- (instancetype)initWithFrame:(CGRect)frame imageArray:(NSMutableArray<UIImage*> *)array returnBlock:(carouseViewBlock)block
{
    if (self = [super initWithFrame:frame])
    {
        _cyclePhotoScrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
        [_cyclePhotoScrollView setBackgroundColor:[UIColor redColor]];
        [self addSubview:_cyclePhotoScrollView];
        [_cyclePhotoScrollView setContentSize:CGSizeMake(self.bounds.size.width*3, self.bounds.size.height)];
        [_cyclePhotoScrollView setPagingEnabled:YES];
        [_cyclePhotoScrollView setBounces:NO];
        [_cyclePhotoScrollView setDelegate:self];
        [_cyclePhotoScrollView setContentOffset:CGPointMake(self.bounds.size.width, 0)];
        [_cyclePhotoScrollView setShowsHorizontalScrollIndicator:NO];
        
        for (int i = 0; i < 3; i++)
        {
            UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(i * self.bounds.size.width, 0, self.bounds.size.width, self.bounds.size.height)];
            [self.cyclePhotoScrollView addSubview:imageView];
            [imageView setTag:i+100];
            [imageView setBackgroundColor:[UIColor colorWithRed:arc4random()%255/255. green:arc4random()%255/255. blue:arc4random()%255/255. alpha:1.]];
            if (i == 1)
            {
                UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesture)];
                [imageView addGestureRecognizer:tapGesture];
                [imageView setUserInteractionEnabled:YES];
            }
            
        }
        self.currentImageIndex = 0;
        _imageArray = [NSMutableArray arrayWithArray:array];
        [self reloadImageViews];
//        NSLog(@"aaa = %@",self.imageArray);

        _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(self.bounds.size.width / 2, self.bounds.size.height - 50, 0, 0)];
        [self addSubview:_pageControl];
        [_pageControl setNumberOfPages:self.imageArray.count];
        
        //默认在主线程开,默认为default mode
        self.timer = [NSTimer scheduledTimerWithTimeInterval:5. target:self selector:@selector(lunbo) userInfo:nil repeats:YES];
        [self setClearsContextBeforeDrawing:NO];
        [self.cyclePhotoScrollView setClipsToBounds:NO];
        self.block = block;
        
    }
    return self;
}

#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
//    NSLog(@"%s",__FUNCTION__);
    [self reloadImageViews];
    [self.pageControl setCurrentPage:self.currentImageIndex];
    self.cyclePhotoScrollView.contentOffset = CGPointMake(self.bounds.size.width, 0);
//    NSLog(@"当前偏移量(endDecelerating) = %.2f",self.cyclePhotoScrollView.contentOffset.x);
    

    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
//    NSLog(@"subViews = %@",scrollView.subviews);
//    NSLog(@"当前偏移量(didScroll) = %.2f",self.cyclePhotoScrollView.contentOffset.x);
    if (self.cyclePhotoScrollView.contentOffset.x == 0)
    {
//        NSLog(@"向右划");
        if (self.currentImageIndex == 0)
        {
            self.currentImageIndex = self.imageArray.count - 1;
        }
        else
        {
            self.currentImageIndex--;
        }
    }
    else if (self.cyclePhotoScrollView.contentOffset.x == self.bounds.size.width * 2)
    {
//        NSLog(@"向左滑");
        if (self.currentImageIndex == self.imageArray.count - 1)
        {
            self.currentImageIndex = 0;
        }
        else
        {
            self.currentImageIndex++;
        }
    }
//    NSLog(@"当前页 = %ld",_currentImageIndex);

}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
//    NSLog(@"%s",__FUNCTION__);
    [self reloadImageViews];
    [self.pageControl setCurrentPage:self.currentImageIndex];
    self.cyclePhotoScrollView.contentOffset = CGPointMake(self.bounds.size.width, 0);
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.timer invalidate];
//    NSLog(@"%s",__FUNCTION__);
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    //延迟2秒后再自动轮播,会有bug.
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2. * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.timer = [NSTimer scheduledTimerWithTimeInterval:5. target:self selector:@selector(lunbo) userInfo:nil repeats:YES];
//    });
    
}


#pragma mark - private methods
- (void)reloadImageViews
{
    UIImageView *leftImageV = [self viewWithTag:FB_CAROUSEL_VIEW_LEFT_TAG];
    UIImageView *middleImageV = [self viewWithTag:FB_CAROUSEL_VIEW_MIDDLE_TAG];
    UIImageView *rightImageV = [self viewWithTag:FB_CAROUSEL_VIEW_RIGHT_TAG];

    
    [leftImageV setImage:[self.imageArray objectAtIndex:(self.currentImageIndex - 1 + self.imageArray.count) % self.imageArray.count]];
    [middleImageV setImage:[self.imageArray objectAtIndex:(self.currentImageIndex + self.imageArray.count) % self.imageArray.count]];
    [rightImageV setImage:[self.imageArray objectAtIndex:(self.currentImageIndex + 1 +self.imageArray.count) % self.imageArray.count]];
    
//    NSLog(@"index = %ld   count = %ld",self.currentImageIndex,self.imageArray.count);
//    NSLog(@"第%lu照片",(self.currentImageIndex + self.imageArray.count) % self.imageArray.count);

}
/**
 *  timer的轮播方法
 */
- (void)lunbo
{
//    NSLog(@"lunbo线程 = %@ , runloop mode = %@",[NSThread currentThread],[[NSRunLoop currentRunLoop] currentMode]);
    [self.cyclePhotoScrollView setContentOffset:CGPointMake(self.bounds.size.width * 2, 0) animated:YES];
//    NSLog(@"%s",__FUNCTION__);

}

- (void)tapGesture
{
    self.block(self.currentImageIndex);
}

@end
