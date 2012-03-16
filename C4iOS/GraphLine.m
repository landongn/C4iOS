//
//  C4GraphLine.m
//  C4iOS
//
//  Created by Travis Kirton on 12-03-15.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "GraphLine.h"

@implementation GraphLine

-(void)setup {
    self.fillColor = [UIColor clearColor];
    self.lineWidth = 2.0f;
    self.strokeEnd = 0.0f;
    self.userInteractionEnabled = NO;
}

-(void)animateToEnd {
    self.animationDuration = 2.0f;
    self.strokeEnd = 1.0f;
}

-(void)animateToBeginning {
    self.animationDuration = 2.0f;
    self.strokeEnd = 0.0f;
}

@end
