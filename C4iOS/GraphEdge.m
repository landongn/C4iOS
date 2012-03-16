//
//  GraphEdge.m
//  C4iOS
//
//  Created by Travis Kirton on 12-03-15.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "GraphEdge.h"

@implementation GraphEdge
@synthesize nodeA = _nodeA, nodeB = _nodeB;
@synthesize addedNodeA, addedNodeB;

-(void)setup {
    addedNodeA = NO;
    addedNodeB = NO;
    CGPoint lineArray[2] = {CGPointZero, CGPointMake(1, 1)};
    self.lineWidth = 3.0f;
    self.strokeColor = C4GREY;
    self.animationDuration = 0.0f;
    self.animationDelay = 0.0f;
    [self line:lineArray];
}

-(void)setNodeA:(GraphNode *)nodeA {
    if(!addedNodeA) {
        _nodeA = nodeA;
        [self listenFor:@"moved" fromObject:nodeA andRunMethod:@"syncToNodeA"];
        addedNodeA = YES;
    }
}

-(void)setNodeB:(GraphNode *)nodeB {
    if(!addedNodeB) {
        _nodeB = nodeB;
        [self listenFor:@"moved" fromObject:nodeB andRunMethod:@"syncToNodeB"];
        addedNodeB = YES;
    }
}

-(void)syncToNodeA {
    if(addedNodeA && addedNodeB){
        self.pointA = self.nodeA.center;
    }
}

-(void)syncToNodeB {
    if(addedNodeA && addedNodeB) {
        self.pointB = self.nodeB.center;
    }
}

-(void)sync {
    [self syncToNodeA];
    [self syncToNodeB];
}
@end
