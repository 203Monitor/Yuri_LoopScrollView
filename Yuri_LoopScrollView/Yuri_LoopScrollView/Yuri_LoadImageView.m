//
//  Yuri_LoadImageView.m
//  Yuri_LoopScrollView
//
//  Created by yuri on 16/2/19.
//  Copyright © 2016年 yuri. All rights reserved.
//

#import "UIView+Yuri_UIViewCommon.h"
#import "Yuri_LoadImageView.h"
#import "UIImageView+AFNetworking.h"
#import "AFImageDownloader.h"
#import "AFHTTPSessionManager.h"
#import "Yuri_LoopScrollView.h"

#define kImageWithName(Name) ([UIImage imageNamed:Name])
#define kAnimationDuration 1.0

@interface Yuri_LoadImageView () {
@private
  BOOL                 _isAnimated;
  UITapGestureRecognizer *_tap;
}


@end

@implementation Yuri_LoadImageView

- (instancetype)initWithFrame:(CGRect)frame {
  if (self = [super initWithFrame:frame]) {
    [self configureLayout];
  }
  return self;
}

- (instancetype)init {
  return [self initWithFrame:CGRectZero];
}

- (instancetype)initWithImage:(UIImage *)image {
  if (self = [super initWithImage:image]) {
    [self configureLayout];
  }
  return self;
}

- (void)configureLayout {
  self.layer.masksToBounds = YES;
  self.clipsToBounds = YES;
  [self setContentScaleFactor:[[UIScreen mainScreen] scale]];
  
  self.animated = YES;
  self.Yuri__borderColor = [UIColor lightGrayColor];
  self.Yuri__borderWidth = 0.0;
  self.Yuri__corneradus = 0.0;
  self.isCircle = NO;
  
  return;
}

- (void)setImage:(UIImage *)image isFromCache:(BOOL)isFromCache {
  self.image = image;
  
  if (!isFromCache && _isAnimated) {
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.65f];
    [animation setType:kCATransitionFade];
    animation.removedOnCompletion = YES;
    [self.layer addAnimation:animation forKey:@"transition"];
  }
  self.contentMode = UIViewContentModeScaleAspectFill;
}

- (void)setAnimated:(BOOL)animated {
  _isAnimated = animated;
  return;
}

- (BOOL)animated {
  return _isAnimated;
}

- (void)setIsCircle:(BOOL)isCircle {
  if (isCircle) {
    if (self.Yuri__width != self.Yuri__height) {
      self.Yuri__size = CGSizeMake(MIN(self.Yuri__width, self.Yuri__height),
                                 MIN(self.Yuri__width, self.Yuri__height));
    }
    self.Yuri__corneradus = self.Yuri__width / 2.0;
  } else {
    self.Yuri__corneradus = 0.0;
  }
  return;
}

- (void)setTapImageViewBlock:(Yuri_TapImageViewBlock)tapImageViewBlock {
  if (_tapImageViewBlock != tapImageViewBlock) {
    _tapImageViewBlock = [tapImageViewBlock copy];
  }
  
  if (_tapImageViewBlock == nil) {
    if (_tap != nil) {
      [self removeGestureRecognizer:_tap];
      self.userInteractionEnabled = NO;
    }
  } else {
    if (_tap == nil) {
      _tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
      [self addGestureRecognizer:_tap];
      self.userInteractionEnabled = YES;
    }
  }
}

- (void)onTap:(UITapGestureRecognizer *)tap {
  if (self.tapImageViewBlock) {
    self.tapImageViewBlock((Yuri_LoadImageView *)tap.view);
  }
}

- (BOOL)isCircle {
  return self.layer.cornerRadius > 0.0;
}

- (void)setImageWithURLString:(NSString *)url
             placeholderImage:(NSString *)placeholderImage {
  return [self setImageWithURLString:url placeholderImage:placeholderImage completion:nil];
}

- (void)setImageWithURLString:(NSString *)url placeholder:(UIImage *)placeholderImage {
  return [self setImageWithURLString:url placeholder:placeholderImage completion:nil];
}

- (void)setImageWithURLString:(NSString *)url
                  placeholder:(UIImage *)placeholderImage
                   completion:(void (^)(UIImage *image))completion {
  [self.layer removeAllAnimations];
  self.completion = completion;
  
  
  if (url == nil
      || [url isKindOfClass:[NSNull class]]
      || (![url hasPrefix:@"http://"] && ![url hasPrefix:@"https://"])) {
    [self setImage:placeholderImage isFromCache:YES];
    if (completion) {
      self.completion(self.image);
    }
    return;
  }
  
  NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
  [self downloadWithReqeust:request holder:placeholderImage];
}

- (void)downloadWithReqeust:(NSURLRequest *)theRequest holder:(UIImage *)holder {
  // 每次都先取消之前的请求
  [self cancelImageDownloadTask];
    
  __weak __typeof(self) welfSelf = self;
    [[[self class] sharedImageDownloader] downloadImageForURLRequest:theRequest success:^(NSURLRequest * _Nonnull request, NSHTTPURLResponse * _Nullable response, UIImage * _Nonnull responseObject) {
        if (response) {
            [welfSelf setImage:responseObject isFromCache:YES];
        }else {
            [welfSelf setImage:responseObject isFromCache:NO];
        }
         if (welfSelf.completion) {
             welfSelf.completion(responseObject);
         }
    } failure:^(NSURLRequest * _Nonnull request, NSHTTPURLResponse * _Nullable response, NSError * _Nonnull error) {
        if (welfSelf.completion) {
            welfSelf.completion(nil);
        }
    }];
}

- (void)setImageWithURLString:(NSString *)url
             placeholderImage:(NSString *)placeholderImage
                   completion:(void (^)(UIImage *image))completion {
  [self setImageWithURLString:url placeholder:kImageWithName(placeholderImage) completion:completion];
}

- (void)cancelRequest {
  [self cancelImageDownloadTask];
}

@end
