//
//  NYMainViewController.m
//  NYBackTransitionSample
//
//  Created by naoto yamaguchi on 2014/03/23.
//  Copyright (c) 2014年 naoto yamaguchi. All rights reserved.
//

#import "NYMainViewController.h"

@interface NYMainViewController ()

@property (nonatomic, strong) UIButton *button1;
@property (nonatomic, strong) UIButton *button2;

@end

@implementation NYMainViewController

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
    self.title = @"Main";
    _button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _button1.frame = CGRectMake(80, 200, 160, 60);
    _button1.layer.cornerRadius = 30.0f;
    _button1.backgroundColor = [UIColor colorWithRed:26.0/255.0f
                                               green:188.0/255.0f
                                                blue:156.0/255.0f
                                               alpha:1.0f];
    [_button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_button1 setTitle:@"Transition1" forState:UIControlStateNormal];
    [_button1 addTarget:self
                 action:@selector(pressButton1)
       forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button1];
    
    _button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _button2.frame = CGRectMake(80, 280, 160, 60);
    _button2.layer.cornerRadius = 30.0f;
    _button2.backgroundColor = [UIColor colorWithRed:26.0/255.0f
                                               green:188.0/255.0f
                                                blue:156.0/255.0f
                                               alpha:1.0f];
    [_button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_button2 setTitle:@"Transition2" forState:UIControlStateNormal];
    [_button2 addTarget:self
                 action:@selector(pressButton2)
       forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button2];
}

- (void)pressButton1
{
    
}

- (void)pressButton2
{
    
}

@end
