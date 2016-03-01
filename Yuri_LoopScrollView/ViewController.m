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
  
  NSArray *titlies = @[@"Thank you for your support!",
                      @"Contact me if any quetion.",
                      @"Email me 930502900@qq.com.",
                      @"Thank you again."
                      ];
  
    Yuri_LoopScrollView *loop = [Yuri_LoopScrollView loopScrollViewWithFrame:CGRectMake(0, 0, screen_width, screen_height/2)
                                                   imageUrls:images
                                                      titles:titlies
                                                timeInterval:5
                                                   didSelect:^(NSInteger atIndex, Yuri_LoadImageView *sender) {
                                                       NSLog(@"clicked item at index: %ld", atIndex);
                                                   }
                                                   didScroll:^(NSInteger toIndex, Yuri_LoadImageView *sender) {
                                                       NSLog(@"scroll to index: %ld", toIndex);
                                                   }];
    
  [self.view addSubview:loop];
}

@end
