//
//  ViewController.m
//  TableviewDemol
//
//  Created by shenyinghao on 16/9/16.
//  Copyright © 2016年 shenyinghao. All rights reserved.
//

#import "ViewController.h"

#import "DataSource.h"

@interface ViewController ()

@property (nonatomic, strong) UITableView *tableview;

/// 这个代理不能是临时变量，否则tableview会出现bug
@property (nonatomic, strong) DataSource *photosArrayDataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"tableview";
    [self setupTableView];
    
    
    // Git test
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)setupTableView
{
    /// 数据源可以多样化，不只是字符串，其他类型也可以
    NSArray *photos = @[@"dadff",@"wefdsgfd"];
    self.photosArrayDataSource = [[DataSource alloc] initWithItems:photos];
    _tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableview.delegate = self.photosArrayDataSource;
    self.tableview.dataSource = self.photosArrayDataSource;
    [self.view addSubview:_tableview];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
