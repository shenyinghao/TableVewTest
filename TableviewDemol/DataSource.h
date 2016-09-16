//
//  DataSource.h
//  TableviewDemol
//
//  Created by shenyinghao on 16/9/16.
//  Copyright © 2016年 shenyinghao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSource : NSObject <UITableViewDelegate,UITableViewDataSource>

- (id)initWithItems:(NSArray *)anItems;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;


@end
