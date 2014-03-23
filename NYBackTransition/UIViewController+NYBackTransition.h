//
//  UIViewController+NYBackTransition.h
//  NYBackTransitionSample
//
//  Created by naoto yamaguchi on 2014/03/21.
//  Copyright (c) 2014年 naoto yamaguchi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NYTransitionManager.h"

@interface UIViewController (NYBackTransition) <UIViewControllerTransitioningDelegate>

- (void)presentViewControllerWithBackTransition:(UIViewController *)viewControllerToPresent
                                     completion:(void (^)(void))completion;

- (void)dismissViewControllerWithBackTransitionCompletion:(void (^)(void))completion;

@end
