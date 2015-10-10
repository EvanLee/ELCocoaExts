//
//  ViewController.m
//  ELViewExtExample
//
//  Created by Evan on 13/9/23.
//  Copyright (c) 2013年 WewaySoft. All rights reserved.
//

#import "ViewController.h"
#import "ELCocoaExts.h"

@interface ViewController ()
@property (nonatomic, assign) BOOL isWork;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    dispatch_onMain_with_delay(1.f, ^{
        
    });
    
    dispatch_onMain_async_safely(^{
        
    });
    
    @weakifySelf(wSelf);
    [UIView animateWithDuration:0.1f animations:^{
        wSelf.isWork = YES;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
