//
//  FBRecommendSecCell.m
//  FirstBlood
//
//  Created by 林佳乔 on 16/4/19.
//  Copyright © 2016年 林佳乔. All rights reserved.
//

#import "FBRecommendSecCell.h"

@implementation FBRecommendSecCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
        _imageV = [[UIImageView alloc] initWithFrame:CGRectMake(0, 10, FB_SCREEN_WIDTH, FB_SCREEN_WIDTH - 64)];
        [_imageV setBackgroundColor:[UIColor yellowColor]];
        [self.contentView addSubview:_imageV];        
      UIImage *newIma =  [self getPartOfImage:[UIImage imageNamed:@"22382_1000_1000.jpg"] rect:CGRectMake(0, 100, 1000, 800)];
        [_imageV setImage:newIma];
    }
    return self;
}
/**
 *  切割图片方法
 *
 *  @param img      需要切割的图片
 *  @param partRect 需要留下的矩形位置
 *
 *  @return 切割后的图片
 */
- (UIImage *)getPartOfImage:(UIImage *)img rect:(CGRect)partRect
{
    CGImageRef imageRef = img.CGImage;
    CGImageRef imagePartRef = CGImageCreateWithImageInRect(imageRef, partRect);
    UIImage *retImg = [UIImage imageWithCGImage:imagePartRef];
    CGImageRelease(imagePartRef);
    return retImg;
}


@end
