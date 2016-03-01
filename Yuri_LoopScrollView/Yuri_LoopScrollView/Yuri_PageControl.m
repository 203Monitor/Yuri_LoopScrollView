//
//  Yuri_PageControl.m
//  Yuri_LoopScrollView
//
//  Created by yuri on 16/2/19.
//  Copyright © 2016年 yuri. All rights reserved.
//

#import "Yuri_PageControl.h"

@implementation Yuri_PageControl

- (instancetype)init {
  if (self = [super init]) {
    // To Do:
    // set any default properties here
    [self addTarget:self
             action:@selector(onPageControlValueChanged:)
   forControlEvents:UIControlEventValueChanged];
  }
  
  return self;
}

- (void)onPageControlValueChanged:(Yuri_PageControl *)sender {
  if (self.valueChangedBlock) {
    self.valueChangedBlock(sender.currentPage);
  }
}

@end
