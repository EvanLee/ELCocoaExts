//
//  UIView+Effects.h
//  ELCocoaExts
//
//  Created by Evan on 13/9/25.
//  Copyright (c) 2013年 WewaySoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Effects)

@property (nonatomic, assign) BOOL tapToHideDarkenView;

- (void)addShadowWithOffset:(CGSize)offset
                      color:(nonnull UIColor *)color
                    opacity:(CGFloat)opacity;

- (void)addShadowWithOffset:(CGSize)offset
                         cornerRadius:(CGFloat)radius
                      color:(nonnull UIColor *)color
                    opacity:(CGFloat)opacity;

- (void)removeShadow;

/**
 *  可以为某个角添加圆角
 *
 *  @param radius  圆角半径
 *  @param corners 具体要添加的哪个角
 */
- (void)addCornersRadius:(CGFloat)radius forCorners:(UIRectCorner)corners;

- (void)showDarkenViewWithAnimation:(BOOL)animate;
- (void)hideDarkenViewWithAnimation:(BOOL)animate;

@end
