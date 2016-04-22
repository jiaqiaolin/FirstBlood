//
//  FBRecommendViewController.m
//  FirstBlood
//
//  Created by 林佳乔 on 16/4/18.
//  Copyright © 2016年 林佳乔. All rights reserved.
//

#import "FBRecommendViewController.h"
#import "FBBaseNavigationController.h"
#import "FBCarouselView.h"
#import "FBRecommendFirstCell.h"
#import "FBRecommendSecCell.h"
#import "FBHttpsServer.h"
#import <UIImageView+WebCache.h>

@interface FBRecommendViewController ()<UITableViewDataSource,
                                                                UITableViewDelegate,
                                                                UIScrollViewDelegate>

/** tableView*/
@property (nonatomic, strong) UITableView *tableView;
/** 滚动view*/
@property (nonatomic, strong) FBRecommendFirstCell *firstCell;
/** 电池栏样式*/
@property (nonatomic, assign) NSInteger statusBarStyle;
/** 导航栏左侧item*/
@property (nonatomic, weak) UIBarButtonItem *navLeftItem;
/** 导航栏右侧button*/
@property (nonatomic, strong) UIButton *navRightButton;
/** 标题Label*/
@property (nonatomic, strong) UILabel *titleLabel;
/** 轮播图细节页面拼接后缀数组*/
@property (nonatomic, strong) NSMutableArray *carouselDetailSuffixArray;
/** 装SecCell图片url的数组*/
@property (nonatomic, strong) NSMutableArray *secCellUrlArray;
@end

@implementation FBRecommendViewController
#pragma mark - Life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTabBarAndBackground];
    [self setNavBarWithAlpha:0 barTintColor:[UIColor whiteColor] tintColor:[UIColor yellowColor]];
    [self setNavBarItem];
    [self.view addSubview:self.tableView];
    self.firstCell = [[FBRecommendFirstCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    [self requestCarouselViewdata];
    [self requestSecCellDataWithPage:1];
    self.firstCell.block = ^(NSInteger index){
        NSLog(@"%ld",index);
        NSURL *url;
        if (index < 3) {
            url = [NSURL URLWithString:[NSString stringWithFormat:@"%@%ld&tagID=all&page=1",FBFirstCellUrlHeader,index+1]];
        }
        else if(index >= 3)
        {
            url = [NSURL URLWithString:[NSString stringWithFormat:@"%@%ld&tagID=all&page=1",FBFirstCellUrlHeader,index+2]];
        }
        NSLog(@"url = %@",url);
        
    };
   
    UIImageView *placeHoderView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"4.jpg"]];
    [placeHoderView setFrame:CGRectMake(0, 0, FB_SCREEN_WIDTH, FB_SCREEN_WIDTH)];
    [self.tableView setTableHeaderView:placeHoderView];
    
    
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return self.statusBarStyle;
}

#pragma mark - <UITableViewDelegate>
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        return FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH + 65;
    }
    else
    {
        return FB_SCREEN_WIDTH - 64 + 10;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%ld",indexPath.row);
}


#pragma mark - <UITableViewDataSource>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.secCellUrlArray.count == 0 ? 5 : self.secCellUrlArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *secCellID = @"FBRecommendSecCell";
    if (indexPath.row == 0)
    {
        return self.firstCell;
    }
    else
    {
        FBRecommendSecCell *secCell = [tableView dequeueReusableCellWithIdentifier:secCellID];
        if (secCell == nil)
        {
            secCell = [[FBRecommendSecCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:secCellID];
        }
        if (!self.secCellUrlArray.count) {
            return secCell;
        }
        [secCell.imageV sd_setImageWithURL:self.secCellUrlArray[indexPath.row - 1] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
            NSLog(@"cachetype = %ld",cacheType);
        }];
        return secCell;
    }
    
}
#pragma mark - <UIScrollViewDelegate>
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat yOffSet = scrollView.contentOffset.y;
//    NSLog(@"%.2f",yOffSet);
    if (yOffSet >= 100)
    {
        [self setNavBarWithAlpha:FB_RECOMMEND_TAB_BAR_MAX_ALPHA barTintColor:nil tintColor:nil];
        [self setStatusBarStyle:UIStatusBarStyleDefault];
        [self setNeedsStatusBarAppearanceUpdate];
        [self.navLeftItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}
                                                                                                           forState:UIControlStateNormal];
        [self.navRightButton setSelected:YES];
        [self.titleLabel setTextColor:[UIColor blackColor]];

    }
    else
    {
        if (yOffSet <= 0)
        {
            [self setStatusBarStyle:UIStatusBarStyleLightContent];
            [self setNeedsStatusBarAppearanceUpdate];
            [self.navLeftItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}
                                                                                                               forState:UIControlStateNormal];
            [self.navRightButton setSelected:NO];
            [self.titleLabel setTextColor:[UIColor whiteColor]];

            UIImageView *currentImageView = [self.tableView.tableHeaderView viewWithTag:FB_CAROUSEL_VIEW_MIDDLE_TAG];
              currentImageView.frame = CGRectMake(yOffSet / 2 + FB_SCREEN_WIDTH,
                                                                        yOffSet,
                                                                        FB_SCREEN_WIDTH - yOffSet,
                                                                        FB_SCREEN_WIDTH  - yOffSet);
        }
        [self setNavBarWithAlpha:yOffSet * FB_RECOMMEND_TAB_BAR_MAX_ALPHA / 100 barTintColor:nil tintColor:nil];
    }
}


#pragma mark - Private methods
/**
 *  设置TabBarController外观和背景色
 */
- (void)setTabBarAndBackground
{
    [self.view setBackgroundColor:[UIColor cyanColor]];
    [self.tabBarController.tabBar setBarTintColor:[UIColor whiteColor]];
    [self.tabBarController.tabBar setAlpha:FB_RECOMMEND_TAB_BAR_MAX_ALPHA];
    
}

- (void)setNavBarItem
{
    [self.navigationItem setTitleView:self.titleLabel];
    [self.titleLabel sizeToFit];
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.navRightButton];
    [self.navigationItem setRightBarButtonItem:rightBarButtonItem animated:YES];
    
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"北京"
                                                                                                             style:UIBarButtonItemStylePlain
                                                                                                           target:self action:@selector(clickLeftBarButton)];
    [self.navigationItem setLeftBarButtonItem:leftBarButtonItem];
    [leftBarButtonItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}
                                                                                                         forState:UIControlStateNormal];
    self.navLeftItem = leftBarButtonItem;
    
    [self setStatusBarStyle:UIStatusBarStyleLightContent];
}
- (void)clickLeftBarButton
{

    
}
- (void)clickRightButton
{
    
}

- (void)requestCarouselViewdata
{
    [[FBHttpsServer shareHttps] connectHttpsWithUrl:FBCarouselViewUrl model:httpsModelDefault method:get postBody:nil resultBlock:^(id result, NSURLResponse *response, NSError *error) {
        
        NSDictionary *resultDic = result;
        NSDictionary *dataDic = resultDic[@"data"];
        NSDictionary *configDic = dataDic[@"config"];
        NSDictionary *feedBanner = configDic[@"AD_FEED_BANNER_2.0"];
        NSArray *adsArray = feedBanner[@"ads"];
//        NSLog(@"adsArray = %@",adsArray);
        NSMutableArray *carouselUrlArray = [NSMutableArray array];
        for (NSDictionary *dic in adsArray)
        {
            NSString *urlString = dic[@"imgURL"];
            [carouselUrlArray addObject:urlString];
//            NSLog(@"%@",[NSString stringWithFormat:@"%@",dic[@"id"]]);
            NSDictionary *abc = dic[@"target"];
            NSString *idString = abc[@"id"];
            [self.carouselDetailSuffixArray addObject:idString];
        }
        NSMutableArray *carouselImageArray = [NSMutableArray array];
        dispatch_group_t group = dispatch_group_create();
       dispatch_queue_t serialQueue = dispatch_queue_create("com.FBLJQ.www", DISPATCH_QUEUE_SERIAL);
        for (int i = 0; i < carouselUrlArray.count; i++)
        {
            dispatch_group_async(group, serialQueue, ^{
                
                NSURL *url = [NSURL URLWithString:carouselUrlArray[i]];
                NSData *data = [NSData dataWithContentsOfURL:url];
                UIImage *imageV = [UIImage imageWithData:data];
                [carouselImageArray addObject:imageV];
            });
        }
        dispatch_group_notify(group, dispatch_get_main_queue(), ^{
            
            [self setCarouselViewWithArray:carouselImageArray];
        });
        
    }];
}

- (void)requestSecCellDataWithPage:(NSInteger)page
{
    NSString *urlString = [NSString stringWithFormat:@"%@%ld",FBSecCellUrlHeader,page];
    [[FBHttpsServer shareHttps] connectHttpsWithUrl:urlString model:httpsModelDefault method:get postBody:nil resultBlock:^(id result, NSURLResponse *response, NSError *error) {
        
//        NSLog(@"result = %@",result);
        NSArray *listArray = result[@"data"][@"list"];
        
        NSDictionary *articlesDic = result[@"data"][@"articles"];
//        NSLog(@"articles = %@",articlesDic);
//        NSLog(@"listArray = %@",listArray);
        for (NSDictionary *dic in listArray)
        {
           NSArray *idStringArray = dic[@"ids"];
            NSString *idString = idStringArray[0];
            [articlesDic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
                
                NSString *stringK = key;
                if ([stringK isEqualToString:idString])
                {
                    NSString *urlStr = obj[@"banner"];
                    NSURL *url = [NSURL URLWithString:urlStr];
                    [self.secCellUrlArray addObject:url];
                }
            }];
        }
        NSLog(@"数组 = %@ %@",self.secCellUrlArray,[NSThread currentThread]);
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [self.tableView reloadData];
        });
        
    }];
}

- (void)setCarouselViewWithArray:(NSMutableArray *)ImageArray;
{
//    NSMutableArray *ImageArray1 = [NSMutableArray array];
//    for (int i = 1; i < 5; i++)
//    {
//        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i]];
//        [ImageArray1 addObject:image];
//    }
    FBCarouselView *carousel = [[FBCarouselView alloc] initWithFrame:CGRectMake(0, 0, FB_SCREEN_WIDTH, FB_SCREEN_WIDTH) imageArray:ImageArray returnBlock:^(NSInteger currentIndex) {
        NSLog(@"轮播图index = %ld",currentIndex);
        NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@",FBCarouselViewDetailUrlHeader,self.carouselDetailSuffixArray[currentIndex]]];
        NSLog(@"url = %@",url);
    }];
    [self.tableView setTableHeaderView:carousel];
}

#pragma mark - Get
- (UITableView *)tableView
{
    if (_tableView == nil)
    {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        [_tableView setDelegate:self];
        [_tableView setDataSource:self];
        [_tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
        UILabel *footerView = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, FB_SCREEN_WIDTH, 49)];
        [footerView setText:@"正在加载"];
        [footerView setTextAlignment:NSTextAlignmentCenter];
        [_tableView setTableFooterView:footerView];
        
    }
    return _tableView;
}

- (UIButton *)navRightButton
{
    if (_navRightButton == nil)
    {
        _navRightButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_navRightButton setImage:[UIImage imageNamed:@"RecommendRightWhite"] forState:UIControlStateNormal];
        [_navRightButton setImage:[UIImage imageNamed:@"RecommendRightBlack"] forState:UIControlStateSelected];
        [_navRightButton sizeToFit];
        [_navRightButton addTarget:self action:@selector(clickRightButton) forControlEvents:UIControlEventTouchUpInside];
    }
    return _navRightButton;
}

- (UILabel *)titleLabel
{
    if (_titleLabel == nil)
    {
        _titleLabel = [[UILabel alloc] init];
        [_titleLabel setTextColor:[UIColor whiteColor]];
        [_titleLabel setText:@"First Blood"];
        [_titleLabel setFont:[UIFont fontWithName:@"Zapfino" size:18.]];
    }
    return _titleLabel;
}

- (NSMutableArray *)carouselDetailSuffixArray
{
    if (_carouselDetailSuffixArray == nil)
    {
        _carouselDetailSuffixArray = [NSMutableArray array];
    }
    return _carouselDetailSuffixArray;
}

- (NSMutableArray *)secCellUrlArray
{
    if (_secCellUrlArray == nil)
    {
        _secCellUrlArray = [NSMutableArray array];
    }
    return _secCellUrlArray;
}

@end
