//
//  GraphEdge.h
//  C4iOS
//
//  Created by Travis Kirton on 12-03-15.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "C4Shape.h"
#import "GraphNode.h"

@interface GraphEdge : C4Shape 
-(void)sync;
-(void)syncToNodeA;
-(void)syncToNodeB;
@property (readwrite, strong, nonatomic) GraphNode *nodeA, *nodeB;
@property (readonly) BOOL addedNodeA, addedNodeB;
@end
