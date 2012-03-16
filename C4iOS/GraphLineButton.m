//
//  GraphLineButton.m
//  C4iOS
//
//  Created by Travis Kirton on 12-03-15.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "GraphLineButton.h"

@implementation GraphLineButton
@synthesize animationEnded, animating, animationBeginTime;

-(void)setup {
    [self ellipse:CGRectMake(0, 0, 44, 44)];
    animationEnded = NO;
    animating = NO;
    animationBeginTime = CACurrentMediaTime();
    self.lineWidth = 1.0f;
}

-(void)touchesBegan {
    if(!self.isAnimating) {
        switch (self.isAnimationEnded) {
            case NO:
                [self animateToEnd];
                break;
            case YES:
                [self animateToBeginning];
                break;
        }
    }
}

-(void)animateToEnd {
    self.animationDuration = 0.25f;
    animationBeginTime = CACurrentMediaTime();
    self.animationOptions = AUTOREVERSE;
    self.lineWidth = 5.0f;
    animationEnded = YES;
    [self postNotification:@"animateToEnd"];
}

-(void)animateToBeginning {
    self.animationDuration = 0.25f;
    self.animationOptions = AUTOREVERSE;
    animationBeginTime = CACurrentMediaTime();
    self.lineWidth = 5.0f;
    animationEnded = NO;
    [self postNotification:@"animateToBeginning"];
}

-(BOOL)isAnimating {
    double time = CACurrentMediaTime() - animationBeginTime;
    if (time > 2.0f) {
        return NO;
    }
    return YES;
}

@end
