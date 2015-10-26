//
//  UIView+Effects.h
//  ELCocoaExts
//
//  Created by Evan on 13/9/25.
//  Copyright (c) 2013年 WewaySoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Effects)

- (void)addShadowWithOffset:(CGSize)offset
                      color:(nonnull UIColor *)color
                    opacity:(CGFloat)opacity;

- (void)addShadowWithOffset:(CGSize)offset
                         cornerRadius:(CGFloat)radius
                      color:(nonnull UIColor *)color
                    opacity:(CGFloat)opacity;


- (void)removeShadow;

@end
