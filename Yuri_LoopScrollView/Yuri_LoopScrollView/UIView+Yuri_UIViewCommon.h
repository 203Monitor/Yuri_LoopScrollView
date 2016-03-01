//
//  UIView+Yuri_UIViewCommon.h
//  Yuri_LoopScrollView
//
//  Created by yuri on 16/2/19.
//  Copyright © 2016年 yuri. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  This is an really useful UIView category,with it, you can short a lot of codes.
 */
@interface UIView (Yuri_UIViewCommon)

/**
 * @brief Shortcut for frame.origin.x.
 *        Sets frame.origin.x = originX
 */
@property (nonatomic) CGFloat Yuri__originX;

/**
 * @brief Shortcut for frame.origin.y
 *        Sets frame.origin.y = originY
 */
@property (nonatomic) CGFloat Yuri__originY;

/**
 * @brief Shortcut for frame.origin.x + frame.size.width
 *       Sets frame.origin.x = rightX - frame.size.width
 */
@property (nonatomic) CGFloat Yuri__rightX;

/**
 * @brief Shortcut for frame.origin.y + frame.size.height
 *        Sets frame.origin.y = bottomY - frame.size.height
 */
@property (nonatomic) CGFloat Yuri__bottomY;

/**
 * @brief Shortcut for frame.size.width
 *        Sets frame.size.width = width
 */
@property (nonatomic) CGFloat Yuri__width;

/**
 * @brief Shortcut for frame.size.height
 *        Sets frame.size.height = height
 */
@property (nonatomic) CGFloat Yuri__height;

/**
 * @brief Shortcut for center.x
 * Sets center.x = centerX
 */
@property (nonatomic) CGFloat Yuri__centerX;

/**
 * @brief Shortcut for center.y
 *        Sets center.y = centerY
 */
@property (nonatomic) CGFloat Yuri__centerY;

/**
 * @brief Shortcut for frame.origin
 */
@property (nonatomic) CGPoint Yuri__origin;

/**
 * @brief Shortcut for frame.size
 */
@property (nonatomic) CGSize Yuri__size;

/**
 *  Get/Set the control's corneradus
 *  Default is 0.0
 */
@property (nonatomic, assign) CGFloat Yuri__corneradus;

/**
 *  Get/Set the control's border color
 *  Default is [UIColor lightGrayColor]
 */
@property (nonatomic, strong) UIColor *Yuri__borderColor;

/**
 *  Get/Set the control's border width
 *  Default is 0.0
 */
@property (nonatomic, assign) CGFloat Yuri__borderWidth;

@end
