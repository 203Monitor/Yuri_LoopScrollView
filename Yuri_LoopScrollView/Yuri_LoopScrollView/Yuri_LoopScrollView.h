//
//  Yuri_LoopScrollView.h
//  Yuri_LoopScrollView
//
//  Created by yuri on 16/2/19.
//  Copyright © 2016年 yuri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Yuri_PageControl.h"
#import "Yuri_LoadImageView.h"
#import "UIView+Yuri_UIViewCommon.h"

/**
 *  The alignment type of page control. Only has two types.
 *  That is: center and right.
 */
typedef NS_ENUM(NSInteger, Yuri_PageControlAlignment) {
  /**
   *  For the center type, only show the page control without any text
   */
  kPageControlAlignCenter = 1 << 1,
  /**
   *  For the align right type, will show the page control and show the ad text
   */
  kPageControlAlignRight  = 1 << 2
};

@class Yuri_LoopScrollView;

/**
 *  Call back method when an item was clicked at some time.
 *
 *  @param atIndex  The index of the clicked item in the loop scroll view
 */
typedef void (^Yuri_LoopScrollViewDidSelectItemBlock)(NSInteger atIndex, Yuri_LoadImageView *sender);

/**
 *  Call back method when scroll to an item at index.
 *
 *  @param toIndex The index of page
 */
typedef void (^Yuri_LoopScrollViewDidScrollBlock)(NSInteger toIndex, Yuri_LoadImageView *sender);

/**
 *  This is an really useful image loading control, you can use to load image to an
 *  UImageView control, with it, will be more convenience to globally download image
 *  asynchronously. Here there are some useful features, but haven't used. Don't delete
 *  them.
 */
@interface Yuri_LoopScrollView : UIView

/**
 *  The holder image for the image view. Default is nil
 */
@property (nonatomic, strong) UIImage *placeholder;

/**
 *  Get the page control
 */
@property (nonatomic, strong, readonly) Yuri_PageControl *pageControl;

/**
 *  The alignment type of the page control.
 * 
 *  @note The default type is kPageControlAlignCenter
 */
@property (nonatomic, assign) Yuri_PageControlAlignment alignment;

/**
 *  The interval time for the timer call. It means that you can
 *  specify a real time for the interval of ad.
 *
 *  @note The default time interval is 5.0
 */
@property (nonatomic, assign) NSTimeInterval timeInterval;

/**
 *  The call back method of item clicked
 */
@property (nonatomic, copy) Yuri_LoopScrollViewDidSelectItemBlock didSelectItemBlock;

/**
 *  The call back method when scroll to a new item
 */
@property (nonatomic, copy) Yuri_LoopScrollViewDidScrollBlock didScrollBlock;

/**
 *  The image urls.It can be absolute urls or main bundle image names, even a real UIImage object.
 */
@property (nonatomic, strong) NSArray *imageUrls;

/**
 *  Get/Set whether page control can handle value changed event.
 * 
 *  @note Set to YES, page control will change to relevant page when clicked.
 *        Set to NO, page control is not enabled.
 *        Default is YES.
 */
@property (nonatomic, assign) BOOL pageControlEnabled;

/**
 *  The ad titles. Only for the alignment kPageControlAlignRight type.
 *
 *  @note If alignment == kPageControlAlignRight, it should be not nil. 
 *        Otherwise it will be ignored whatever it is.
 */
@property (nonatomic, strong) NSArray *adTitles;

/**
 *  The only created method for creating an object.
 *
 *  @param frame     The frame for the loop scroll view
 *  @param imageUrls image urls or image names or a real image object, you can mix together.
 *
 *  @return The Yuri_LoopScrollView object.
 */
+ (instancetype)loopScrollViewWithFrame:(CGRect)frame imageUrls:(NSArray *)imageUrls;
+ (instancetype)loopScrollViewWithFrame:(CGRect)frame
                              imageUrls:(NSArray *)imageUrls
                           timeInterval:(NSTimeInterval)timeInterval
                              didSelect:(Yuri_LoopScrollViewDidSelectItemBlock)didSelect
                              didScroll:(Yuri_LoopScrollViewDidScrollBlock)didScroll;

/**
 *  Pause the timer. Usually you need to pause the timer when the view disappear.
 */
- (void)pauseTimer;

/**
 *  Start the timer immediately. If you has pause the timer, you may need to start 
 *  the timer again when the view appear.
 */
- (void)startTimer;

@end
