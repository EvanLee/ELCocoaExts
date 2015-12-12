//
//  UIView+Effects.m
//  ELCocoaExts
//
//  Created by Evan on 13/9/25.
//  Copyright (c) 2013年 WewaySoft. All rights reserved.
//

#import "UIView+Effects.h"
#import <objc/runtime.h>
#import "UIView+Events.h"

#define DARKENVIEW_TAG 8989898

char DarkenViewTapDismissKey;

@implementation UIView (Effects)

#pragma mark - Public Methods

- (void)addShadowWithOffset:(CGSize)offset
                      color:(nonnull UIColor *)color
                    opacity:(CGFloat)opacity
{
    [self removeShadow];
    [self addShadowWithOffset:offset cornerRadius:0.f color:color opacity:opacity];
}

- (void)addShadowWithOffset:(CGSize)offset
               cornerRadius:(CGFloat)radius
                      color:(nonnull UIColor *)color
                    opacity:(CGFloat)opacity
{
    UIBezierPath *shadowPath = radius <= 0.f ?
                                [UIBezierPath bezierPathWithRect:self.bounds] :
                                [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:radius];
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

- (void)addCornersRadius:(CGFloat)radius forCorners:(UIRectCorner)corners
{
    CAShapeLayer * maskLayer = [CAShapeLayer layer];
    maskLayer.path = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                           byRoundingCorners: corners
                                                 cornerRadii:CGSizeMake(radius, radius)].CGPath;
    
    self.layer.mask = maskLayer;
}

- (void)showDarkenViewWithAnimation:(BOOL)animate
{
    UIView *darkenView = [self viewWithTag:DARKENVIEW_TAG];
    
    if (!darkenView) {
        darkenView = [[UIView alloc] initWithFrame:self.bounds];
        [darkenView setBackgroundColor:[UIColor colorWithWhite:.1f alpha:0.5f]];
        darkenView.tag = DARKENVIEW_TAG;
        darkenView.alpha = 0.f;
        [self addSubview:darkenView];
        
        __typeof (&*self) __weak weakSelf = self;
        [darkenView setTapActionWithBlock:^(UIView *view) {
            if (weakSelf.tapToHideDarkenView) {
                [weakSelf hideDarkenViewWithAnimation:animate];
            }
        }];
    }
    
    
    if (animate) {
        [UIView animateWithDuration:.3
                         animations:^{
                             darkenView.alpha = 1.f;
                         } completion:nil];
    } else {
        darkenView.alpha = 1.f;
    }
}

- (void)hideDarkenViewWithAnimation:(BOOL)animate
{
    UIView *darkenView = [self viewWithTag:DARKENVIEW_TAG];
    if (!animate) {
        [darkenView removeFromSuperview];
    } else {
        [UIView animateWithDuration:.3
                         animations:^{
                             darkenView.alpha = 0.f;
                         } completion:^(BOOL finished) {
                             [darkenView removeFromSuperview];
                         }];
    }
}


#pragma mark - Private Methods
- (void)setTapToHideDarkenView:(BOOL)tapToHideDarkenView
{
    objc_setAssociatedObject(self,
                             &DarkenViewTapDismissKey,
                             @(tapToHideDarkenView),
                             OBJC_ASSOCIATION_RETAIN);
}

- (BOOL)tapToHideDarkenView
{
    NSNumber * b = objc_getAssociatedObject(self, &DarkenViewTapDismissKey);
    return b ? [b boolValue] : YES;
}

@end
