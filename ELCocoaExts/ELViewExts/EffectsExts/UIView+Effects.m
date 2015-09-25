//
//  UIView+Effects.m
//  ELCocoaExts
//
//  Created by Evan on 13/9/25.
//  Copyright (c) 2013年 WewaySoft. All rights reserved.
//

#import "UIView+Effects.h"

@implementation UIView (Effects)

- (void)addShadowWithOffset:(CGSize)offset color:(UIColor *)color opacity:(CGFloat)opacity
{
    [self removeShadow];
    
    UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRect:self.bounds];
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowOffset = offset;
    self.layer.shadowOpacity = opacity;
    self.layer.shadowPath = shadowPath.CGPath;
}

- (void)removeShadow
{
    self.layer.masksToBounds = YES;
    self.layer.shadowOpacity = 1.f;
    self.layer.shadowPath = nil;
}

@end
