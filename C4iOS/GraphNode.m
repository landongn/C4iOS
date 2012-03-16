//
//  GraphNode.m
//  C4iOS
//
//  Created by Travis Kirton on 12-03-15.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "GraphNode.h"

@implementation GraphNode

-(void)setup {
    [self ellipse:CGRectMake(0, 0, 32, 32)];
    self.lineWidth = 0.0f;
    [self addGesture:PAN name:@"panGesture" action:@"move:"];
}

-(void)move:(id)sender {
    self.animationDuration = 0.0f;
    CGPoint newPoint = [sender locationInView:self];
    CGPoint current = self.center;
    current.x += newPoint.x-self.frame.size.width/2;
    current.y += newPoint.y-self.frame.size.height/2;
    self.center = current;
    [self postNotification:@"moved"];
}

-(void)touchesEnded {
    [self postNotification:@"changedPosition"];
}
@end
