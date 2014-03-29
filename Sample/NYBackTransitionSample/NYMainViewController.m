//
//  NYMainViewController.m
//  NYBackTransitionSample
//
//  Created by naoto yamaguchi on 2014/03/23.
//  Copyright (c) 2014年 naoto yamaguchi. All rights reserved.
//

#import "NYMainViewController.h"
#import "NYModalViewController.h"
#import "UIViewController+NYBackTransition.h"

@interface NYMainViewController ()

@property (nonatomic, strong) UILabel *mainLabel;
@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UILabel *label2;
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
    self.title = @"Sample";
    self.view.backgroundColor = [UIColor whiteColor];
    
    _mainLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 100, 200, 70)];
    _mainLabel.text = @"BackTransition";
    _mainLabel.font = [UIFont fontWithName:@"BanglaSangamMN" size:25.0f];
    [self.view addSubview:_mainLabel];
    
    _label1 = [[UILabel alloc] initWithFrame:CGRectMake(60, 190, 250, 70)];
    _label1.text = @"・UINavigationController";
    _label1.font = [UIFont fontWithName:@"BanglaSangamMN" size:20.0f];
    [self.view addSubview:_label1];
    
    _button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _button1.frame = CGRectMake(80, 260, 160, 60);
    _button1.layer.cornerRadius = 30.0f;
    _button1.backgroundColor = [UIColor colorWithRed:26.0/255.0f
                                               green:188.0/255.0f
                                                blue:156.0/255.0f
                                               alpha:1.0f];
    [_button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_button1 setTitle:@"Transition1" forState:UIControlStateNormal];
    _button1.titleLabel.font = [UIFont fontWithName:@"BanglaSangamMN" size:18.0f];
    [_button1 addTarget:self
                 action:@selector(pressButton1)
       forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button1];
    
    _label2 = [[UILabel alloc] initWithFrame:CGRectMake(60, 340, 200, 70)];
    _label2.text = @"・UIViewController";
    _label2.font = [UIFont fontWithName:@"BanglaSangamMN" size:20.0f];
    [self.view addSubview:_label2];
    
    _button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _button2.frame = CGRectMake(80, 410, 160, 60);
    _button2.layer.cornerRadius = 30.0f;
    _button2.backgroundColor = [UIColor colorWithRed:26.0/255.0f
                                               green:188.0/255.0f
                                                blue:156.0/255.0f
                                               alpha:1.0f];
    [_button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_button2 setTitle:@"Transition2" forState:UIControlStateNormal];
    _button2.titleLabel.font = [UIFont fontWithName:@"BanglaSangamMN" size:18.0f];
    [_button2 addTarget:self
                 action:@selector(pressButton2)
       forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button2];
}

// with UINavigationBar
- (void)pressButton1
{
    NYModalViewController *modalVC = [[NYModalViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:modalVC];
    [self presentViewControllerWithBackTransition:nav completion:nil];
}

// UIViewController only
- (void)pressButton2
{
    NYModalViewController *modalVC = [[NYModalViewController alloc] init];
    [self presentViewControllerWithBackTransition:modalVC completion:nil];
    
}

@end
