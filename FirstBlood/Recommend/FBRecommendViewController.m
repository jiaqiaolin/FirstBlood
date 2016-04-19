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

@interface FBRecommendViewController ()<UITableViewDataSource, UITableViewDelegate>

/** tableView*/
@property (nonatomic, strong) UITableView *tableView;
/** 滚动view*/
@property (nonatomic, strong) FBRecommendFirstCell *firstCell;
@end

@implementation FBRecommendViewController
#pragma mark - Life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTabBarAndBackground];
    [self setNavBarWithAlpha:.5 barTintColor:[UIColor whiteColor] tintColor:[UIColor yellowColor]];
    [self.view addSubview:self.tableView];
    self.firstCell = [[FBRecommendFirstCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    NSLog(@"aaaaaaa = %.f",FB_RECOMMEND_FIRST_CELL_VIEW_WIDTH);
    NSMutableArray *mutArray = [NSMutableArray array];
    for (int i = 1; i < 5; i++)
    {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i]];
        [mutArray addObject:image];
    }
    FBCarouselView *carousel = [[FBCarouselView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width) imageArray:mutArray];
    [self.tableView setTableHeaderView:carousel];
    
}

- (void)viewWillLayoutSubviews
{
    self.firstCell = [[FBRecommendFirstCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    [self.firstCell setFrame:CGRectMake(0, 0, FB_SCREEN_WIDTH, 44)];
}

#pragma mark - private methods
/**
 *  设置TabBarController外观和背景色
 */
- (void)setTabBarAndBackground
{
    [self.view setBackgroundColor:[UIColor redColor]];
    [self.tabBarController.tabBar setBarTintColor:[UIColor whiteColor]];
    [self.tabBarController.tabBar setAlpha:.7];
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
        return 55;
    }
}
#pragma mark - <UITableViewDataSource>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *secCellID = @"FBRecommendSecCell";
    if (indexPath.row == 0)
    {
        [self.firstCell setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
        return self.firstCell;
    }
    else
    {
        FBRecommendSecCell *secCell = [tableView dequeueReusableCellWithIdentifier:secCellID];
        if (secCell == nil)
        {
            secCell = [[FBRecommendSecCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:secCellID];
        }
        return secCell;
    }
    
}
#pragma mark - Private methods


#pragma mark - Get
- (UITableView *)tableView
{
    if (_tableView == nil)
    {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        [_tableView setDelegate:self];
        [_tableView setDataSource:self];
    }
    return _tableView;
}


@end
