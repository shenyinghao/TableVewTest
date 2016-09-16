//
//  DataSource.m
//  TableviewDemol
//
//  Created by shenyinghao on 16/9/16.
//  Copyright © 2016年 shenyinghao. All rights reserved.
//

#import "DataSource.h"


@interface DataSource ()

// 数据源
@property (nonatomic, strong) NSArray *items;

@end


@implementation DataSource
- (id)initWithItems:(NSArray *)anItems
{
    self = [super init];
    if (self) {
        // 数据源赋值
        self.items = anItems;
    }
    return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath
{
    /// 取数据
    return self.items[(NSUInteger) indexPath.row];
}

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    /// 这里可以自定义，也可以设置不同的代理、block，进行复用
    static  NSString * const strMark = @"mark";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:strMark];
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strMark];
    }
    id item = [self itemAtIndexPath:indexPath];
    cell.textLabel.text = item;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    /// 自定义跳转或者 处理相关逻辑
    NSLog(@"0000000000000000000");
}


@end
