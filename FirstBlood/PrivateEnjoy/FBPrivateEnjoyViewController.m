//
//  FBPrivateEnjoyViewController.m
//  FirstBlood
//
//  Created by 林佳乔 on 16/4/18.
//  Copyright © 2016年 林佳乔. All rights reserved.
//

#import "FBPrivateEnjoyViewController.h"

@interface FBPrivateEnjoyViewController ()<UIScrollViewDelegate>

@property (nonatomic,retain) NSMutableArray *FoodArray;
@property (nonatomic,retain) NSMutableArray *PlayArray;
@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView;

@property (weak, nonatomic) IBOutlet UITableView *FoodTableview;
@property (weak, nonatomic) IBOutlet UITableView *PlayTableview;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tableviewLayout;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *layoutWidth;

@end

@implementation FBPrivateEnjoyViewController
#pragma mark - Life cycle
- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"美食      潮玩";
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    _ScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 104, FB_SCREEN_WIDTH, FB_SCREEN_HEIGHT - 120)];
    _ScrollView.pagingEnabled = YES;
    _ScrollView.backgroundColor = [UIColor redColor];
    _ScrollView.contentSize = CGSizeMake(FB_SCREEN_WIDTH * 2, 0);
    [self.view addSubview:_ScrollView];
    [self getButton];
    
    
    UITableView * FoodTableview = [UITableView alloc]initWithFrame:<#(CGRect)#> style:<#(UITableViewStyle)#>
    
    
}

#pragma mark - <UITableViewDelegate>

#pragma mark - <UITableViewDataSource>

#pragma mark - Private methods

-(void)getButton
{
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 64, FB_SCREEN_WIDTH, 40)];
    view1.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view1];
    
    UIButton * NearbyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    NearbyButton.frame = CGRectMake(10, 5, 40, 30);
    [NearbyButton setTitle:@"附近" forState:UIControlStateNormal];
    [NearbyButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    NearbyButton.titleLabel.font = [UIFont systemFontOfSize:15.];
    [NearbyButton addTarget:self action:@selector(NearbyButton:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:NearbyButton];
    
    UIButton * FilterButton = [UIButton buttonWithType:UIButtonTypeCustom];
    FilterButton.frame = CGRectMake(FB_SCREEN_WIDTH - 50, 5, 40, 30);
    [FilterButton setTitle:@"筛选" forState:UIControlStateNormal];
    [FilterButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    FilterButton.titleLabel.font = [UIFont systemFontOfSize:15.];
    [FilterButton addTarget:self action:@selector(FilterButton:) forControlEvents:UIControlEventTouchUpInside];
    [view1 addSubview:FilterButton];
}

-(void)NearbyButton:(UIButton *)button1
{
    
}

-(void)FilterButton:(UIButton *)button1
{
    
}

#pragma mark - 懒加载
-(NSMutableArray *)FoodArray
{
    if (!_FoodArray) {
        self.FoodArray = [NSMutableArray array];
        
    }
    return _FoodArray;
}

-(NSMutableArray *)PlayArray
{
    if (!_PlayArray) {
        self.PlayArray = [NSMutableArray array];
    }
    return _PlayArray;
}

@end
