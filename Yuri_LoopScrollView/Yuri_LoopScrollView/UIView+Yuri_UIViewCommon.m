//
//  UIView+Yuri_UIViewCommon.m
//  Yuri_LoopScrollView
//
//  Created by yuri on 16/2/19.
//  Copyright © 2016年 yuri. All rights reserved.
//

#import "UIView+Yuri_UIViewCommon.h"

@implementation UIView (Yuri_UIViewCommon)

- (void)setYuri__origin:(CGPoint)Yuri__origin {
  CGRect frame = self.frame;
  frame.origin = Yuri__origin;
  self.frame = frame;
}

- (CGPoint)Yuri__origin {
  return self.frame.origin;
}

- (void)setYuri__originX:(CGFloat)Yuri__originX {
  self.Yuri__origin = CGPointMake(Yuri__originX, self.Yuri__originY);
}

- (CGFloat)Yuri__originX {
  return self.Yuri__origin.x;
}

- (void)setYuri__originY:(CGFloat)Yuri__originY {
  self.Yuri__origin = CGPointMake(self.Yuri__originX, Yuri__originY);
}

- (CGFloat)Yuri__originY {
  return self.Yuri__origin.y;
}

- (void)setYuri__rightX:(CGFloat)Yuri__rightX {
  CGRect frame = self.frame;
  frame.origin.x = Yuri__rightX - frame.size.width;
  self.frame = frame;
}

- (CGFloat)Yuri__rightX {
  return self.Yuri__width + self.Yuri__originX;
}

- (void)setYuri__width:(CGFloat)Yuri__width {
  CGRect frame = self.frame;
  frame.size.width = Yuri__width;
  self.frame = frame;
}

- (CGFloat)Yuri__width {
  return self.frame.size.width;
}

- (void)setYuri__size:(CGSize)Yuri__size {
  CGRect frame = self.frame;
  frame.size = Yuri__size;
  self.frame = frame;
}

- (CGSize)Yuri__size {
  return self.frame.size;
}

- (void)setYuri__height:(CGFloat)Yuri__height {
  CGRect frame = self.frame;
  frame.size.height = Yuri__height;
  self.frame = frame;
}

- (CGFloat)Yuri__height {
  return self.frame.size.height;
}

- (void)setYuri__bottomY:(CGFloat)Yuri__bottomY {
  CGRect frame = self.frame;
  frame.origin.y = Yuri__bottomY - frame.size.height;
  self.frame = frame;
}

- (CGFloat)Yuri__bottomY {
  return self.frame.size.height + self.frame.origin.y;
}

- (void)setYuri__centerX:(CGFloat)Yuri__centerX {
  self.center = CGPointMake(Yuri__centerX, self.center.y);
}

- (CGFloat)Yuri__centerX {
  return self.center.x;
}

- (void)setYuri__centerY:(CGFloat)Yuri__centerY {
  self.center = CGPointMake(self.center.x, Yuri__centerY);
}

- (CGFloat)Yuri__centerY {
  return self.center.y;
}

- (void)setYuri__corneradus:(CGFloat)Yuri__corneradus {
  self.layer.cornerRadius = Yuri__corneradus;
}

- (CGFloat)Yuri__corneradus {
  return self.layer.cornerRadius;
}

- (void)setYuri__borderColor:(UIColor *)Yuri__borderColor {
  self.layer.borderColor = Yuri__borderColor.CGColor;
}

- (UIColor *)Yuri__borderColor {
  return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setYuri__borderWidth:(CGFloat)Yuri__borderWidth {
  self.layer.borderWidth = Yuri__borderWidth;
}

- (CGFloat)Yuri__borderWidth {
  return self.layer.borderWidth;
}

@end
