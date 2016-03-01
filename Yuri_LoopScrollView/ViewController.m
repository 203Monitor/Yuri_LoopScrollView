//
//  ViewController.m
//  Yuri_LoopScrollView
//
//  Created by yuri on 16/2/19.
//  Copyright © 2016年 yuri. All rights reserved.
//

#import "ViewController.h"
#import "Yuri_LoopScrollView.h"
#define screen_width [UIScreen mainScreen].bounds.size.width
#define screen_height [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  NSString *url = @"https://ss1.bdstatic.com/5eN1bjq8AAUYm2zgoY3K/r/www/cache/static/protocol/https/home/img/qrcode/zbios_62c636fe.png";
    
  NSArray *images = @[url,
                        url,
                        url,
                        url
                        ];
  
  NSArray *titles = @[@"Thank you for your support!",
                      @"Contact me if any quetion.",
                      @"Email me 930502900@qq.com.",
                      @"Thank you again."
                      ];
  
  Yuri_LoopScrollView *loop = [Yuri_LoopScrollView loopScrollViewWithFrame:CGRectMake(0, 64, screen_width, screen_height/5) imageUrls:images];
  loop.timeInterval = 1;//设置时间间隔
  loop.placeholder = [UIImage imageNamed:@"h1.jpg"];//设置placeholder
  loop.didSelectItemBlock = ^(NSInteger atIndex, Yuri_LoadImageView *sender) {
      //设置点击时block
    NSLog(@"clicked item at index: %ld", atIndex);
  };
  loop.didScrollBlock = ^(NSInteger atIndex, Yuri_LoadImageView *sender) {
      //滑动时block
    NSLog(@"scroll to index: %ld", atIndex);
  };
  loop.alignment = kPageControlAlignRight;
  loop.adTitles = titles;//设置标题

  [self.view addSubview:loop];
}

@end
