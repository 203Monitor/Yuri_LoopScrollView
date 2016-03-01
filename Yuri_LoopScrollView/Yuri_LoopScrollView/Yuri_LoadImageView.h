//
//  Yuri_LoadImageView.h
//  Yuri_LoopScrollView
//
//  Created by yuri on 16/2/19.
//  Copyright © 2016年 yuri. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Yuri_LoadImageView;

typedef void (^Yuri_TapImageViewBlock)(Yuri_LoadImageView *imageView);
typedef void (^Yuri_ImageBlock)(UIImage *image);

/**
 *  This is an really useful image loading control, you can use to load image to an
 *  UImageView control, with it, will be more convenience to globally download image
 *  asynchronously. Here there are some useful features, but haven't used. Don't delete
 *  them.
 */
@interface Yuri_LoadImageView : UIImageView

/**
 *  Set to YES and it will be animated when image is loaded from network.
 *  If it it loaded from disk, it will be ignored.
 *  Default is YES.
 */
@property (nonatomic, assign) BOOL animated;

/**
 *  Set the control to be circle.
 *  Default is NO.
 */
@property (nonatomic, assign) BOOL isCircle;

/**
 *  Get/Set the callback block when download the image finished.
 *
 *  @param image The image object from network or from disk.
 */
@property (nonatomic, copy) Yuri_ImageBlock completion;

/**
 *  Get/Set the call back block when the image view is tapped.
 *  
 *  @note Only when property tapImageViewBlock is setted, will it add a tap gesture.
 *        When set it to be nil, the tap gesture will be removed automatically.
 *
 *  @param imageView The event receiver.
 */
@property (nonatomic, copy) Yuri_TapImageViewBlock tapImageViewBlock;

/**
 *  Use these methods to download image async.
 */
- (void)setImageWithURLString:(NSString *)url placeholderImage:(NSString *)placeholderImage;
- (void)setImageWithURLString:(NSString *)url placeholder:(UIImage *)placeholderImage;
- (void)setImageWithURLString:(NSString *)url
                  placeholder:(UIImage *)placeholderImage
                   completion:(void (^)(UIImage *image))completion;
- (void)setImageWithURLString:(NSString *)url
             placeholderImage:(NSString *)placeholderImage
                   completion:(void (^)(UIImage *image))completion;

- (void)cancelRequest;

@end
