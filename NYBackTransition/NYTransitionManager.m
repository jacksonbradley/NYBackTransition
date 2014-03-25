//
//  NYTransitionManager.m
//  NYBackTransitionSample
//
//  Created by naoto yamaguchi on 2014/03/23.
//  Copyright (c) 2014年 naoto yamaguchi. All rights reserved.
//

#import "NYTransitionManager.h"

// TODO: change tag value
static const NSUInteger kDimmingViewTag = 100000;
static const NSTimeInterval kAnimationDuration = 0.3;

@interface NYTransitionManager ()

@property (strong, nonatomic) id<UIViewControllerContextTransitioning> transitionContext;
@property (nonatomic) BOOL flag;

@end

@implementation NYTransitionManager

- (id)initWithPresenting:(BOOL)flag
{
    self = [super init];
    if (self) {
        _flag = flag;
    }
    return self;
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 0.6f;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    if (_flag) {
        [self presentTransitionWithTransitionContext:transitionContext];
    } else {
        [self dismissTransitionWithTransitionContext:transitionContext];
    }
}

- (void)presentTransitionWithTransitionContext:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIView *containerView = [transitionContext containerView];
    containerView.backgroundColor = [UIColor blackColor];
    
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *dimmingView = [self dimmingViewWithFrame:containerView.frame];
    [fromViewController.view addSubview:dimmingView];
    
    // TODO: rename invisibleFrame and method
    CGRect beforePresentFrame = containerView.frame;
    beforePresentFrame.origin.y = containerView.frame.size.height;
    toViewController.view.frame = beforePresentFrame;
    
    [containerView insertSubview:toViewController.view
                    aboveSubview:fromViewController.view];
    
    // TODO: method
    if ([toViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *nav = (UINavigationController *)toViewController;
        UINavigationBar *navBar = nav.navigationBar;
        CGRect navBarFrame = navBar.frame;
        navBar.frame = CGRectMake(navBarFrame.origin.x,
                                 navBarFrame.origin.y,
                                 navBarFrame.size.width,
                                 navBarFrame.size.height + 20.0f);
    }
    
    CATransform3D transform = [self backAnimation];
    
    [UIView animateWithDuration:0.35f
                          delay:0.05f
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         fromViewController.view.layer.transform = transform;
                         dimmingView.alpha = 0.7f;
                     } completion:^(BOOL finished) {
                     }];
    
    [UIView animateWithDuration:0.30f
                          delay:0.15f
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         toViewController.view.frame = containerView.frame;
                     } completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)dismissTransitionWithTransitionContext:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIView *containerView = [transitionContext containerView];
    containerView.backgroundColor = [UIColor blackColor];
    
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    // TODO: method
    UIView *dimmingView;
    for (UIView *view in toViewController.view.subviews) {
        if (view.tag == kDimmingViewTag) {
            dimmingView = view;
        }
    }
    
    // TODO: method
    toViewController.view.frame = containerView.frame;
    CATransform3D transform = CATransform3DIdentity;
    toViewController.view.layer.transform = CATransform3DScale(transform, 0.85f, 0.85f, 1.0f);
    
    [containerView insertSubview:toViewController.view
                    belowSubview:fromViewController.view];
    
    // TODO: method
    CGRect invisibleFrame = containerView.frame;
    invisibleFrame.origin.y = containerView.frame.size.height;
    
    [UIView animateWithDuration:0.30f
                          delay:0.05f
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         fromViewController.view.frame = invisibleFrame;
                     } completion:^(BOOL finished) {
                     }];
    
    [UIView animateWithDuration:0.25f
                          delay:0.10f
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         toViewController.view.layer.transform = CATransform3DIdentity;
                         dimmingView.alpha = 0.0f;
                     } completion:^(BOOL finished) {
                         [dimmingView removeFromSuperview];
                         [transitionContext completeTransition:YES];
                     }];
    
}

- (UIView *)dimmingViewWithFrame:(CGRect)frame
{
    UIView *dimmingView = [[UIView alloc] initWithFrame:frame];
    dimmingView.backgroundColor = [UIColor blackColor];
    dimmingView.alpha = 0.0f;
    dimmingView.tag = kDimmingViewTag;
    return dimmingView;
}

- (void)adjustNavigationBarHeightWithViewController:(UIViewController *)viewController
{
    
}

- (CATransform3D)backAnimation
{
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = 1.0/-500.0;
    transform = CATransform3DScale(transform, 0.85f, 0.85f, 1.0f);
    return transform;
}

@end
