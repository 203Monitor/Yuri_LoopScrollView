//
//  Yuri_PageControl.h
//  Yuri_LoopScrollView
//
//  Created by yuri on 16/2/19.
//  Copyright © 2016年 yuri. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  If you want to design a very beautiful page control, you can change it.
 *  Or you can send your require to my email, and I will try my best to add
 *  what you want.
 */
@interface Yuri_PageControl : UIPageControl

/**
 *  The call back when click a page control to switch to another page.
 *
 *  @param clickAtIndex The index clicked
 */
typedef void (^Yuri_PageControlValueChangedBlock)(NSInteger clickAtIndex);

/**
 *  It is not required. If you don't want to handle it, just ignore.
 */
@property (nonatomic, copy) Yuri_PageControlValueChangedBlock valueChangedBlock;

@end
