//
//  UITableView+Exts.h
//  Example
//
//  Created by Evan on 13/11/10.
//  Copyright © 2013年 WewaySoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Exts)

/**
 *  注册Nib
 *
 *  @param name nibName
 */
- (void)registerNibWithName:(NSString *)nibName;
- (void)registerNibWithName:(NSString *)nibName bundle:(NSBundle *)bundleOrNil;

/**
 *  注册重用类，默认采用类名做reuser identfer
 *
 *  @param cellClass 类名
 */
- (void)registerClass:(Class)cellClass;

@end
