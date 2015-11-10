//
//  UITableView+Exts.m
//  Example
//
//  Created by Evan on 13/11/10.
//  Copyright © 2013年 WewaySoft. All rights reserved.
//

#import "UITableView+Exts.h"

@implementation UITableView (Exts)

#pragma mark - Public Methods

- (void)registerNibWithName:(NSString *)nibName bundle:(NSBundle *)bundleOrNil
{
    [self registerNib:[UINib nibWithNibName:nibName bundle:nil] forCellReuseIdentifier:nibName];
}

- (void)registerNibWithName:(NSString *)nibName
{
    [self registerNibWithName:nibName bundle:nil];
}

- (void)registerClass:(Class)cellClass
{
    [self registerClass:cellClass forCellReuseIdentifier:NSStringFromClass(cellClass)];
}


@end
