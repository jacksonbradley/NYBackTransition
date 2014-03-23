//
//  NYModalViewController.m
//  NYBackTransitionSample
//
//  Created by naoto yamaguchi on 2014/03/23.
//  Copyright (c) 2014年 naoto yamaguchi. All rights reserved.
//

#import "NYModalViewController.h"

@interface NYModalViewController ()

@property (nonatomic, strong) UIBarButtonItem *closeButton;

@end

@implementation NYModalViewController

- (id)init
{
    self = [super init];
    if (self) {
        // custom
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Modal";
    self.view.backgroundColor = [UIColor redColor];
    _closeButton = [[UIBarButtonItem alloc] initWithTitle:@"close"
                                                    style:UIBarButtonItemStylePlain
                                                   target:self
                                                   action:@selector(pressCloseButton)];
    self.navigationItem.rightBarButtonItem = _closeButton;
}

- (void)pressCloseButton
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
