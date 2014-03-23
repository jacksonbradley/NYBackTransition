//
//  UIViewController+NYBackTransition.m
//  NYBackTransitionSample
//
//  Created by naoto yamaguchi on 2014/03/21.
//  Copyright (c) 2014年 naoto yamaguchi. All rights reserved.
//

#import "UIViewController+NYBackTransition.h"

@implementation UIViewController (NYBackTransition)

# pragma mark - Extarnal API

- (void)presentViewControllerWithBackTransition:(UIViewController *)viewControllerToPresent
                                     completion:(void (^)(void))completion
{
    viewControllerToPresent.transitioningDelegate = self;
    [self presentViewController:viewControllerToPresent animated:YES completion:completion];
}

- (void)dismissViewControllerWithBackTransitionCompletion:(void (^)(void))completion
{
    [self dismissViewControllerAnimated:YES completion:completion];
}

# pragma mark - UIViewControllerTransitioningDelegate

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                  presentingController:(UIViewController *)presenting
                                                                      sourceController:(UIViewController *)source
{
    return [[NYTransitionManager alloc] initWithPresenting:YES];
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    return [[NYTransitionManager alloc] initWithPresenting:NO];
}

@end
