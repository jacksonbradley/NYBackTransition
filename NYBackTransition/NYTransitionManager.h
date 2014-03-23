//
//  NYTransitionManager.h
//  NYBackTransitionSample
//
//  Created by naoto yamaguchi on 2014/03/23.
//  Copyright (c) 2014年 naoto yamaguchi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NYTransitionManager : NSObject <UIViewControllerAnimatedTransitioning>

- (id)initWithPresenting:(BOOL)flag;

@end
