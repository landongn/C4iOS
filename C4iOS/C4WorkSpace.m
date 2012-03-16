//
//  C4WorkSpace.m
//  C4iOS
//
//  Created by Travis Kirton on 12-03-12.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

C4Shape *shape;
C4Font *font;
C4Movie *inception;
C4GL *gl;

#import "C4WorkSpace.h"
#import "C4Font.h"

@implementation C4WorkSpace 

-(void)setup {
    gl = [C4GL new];
    gl.frame = CGRectMake(0, 0, 600, 400);
    [self addGL:gl];
    [gl startAnimation];
//    inception = [C4Movie movieNamed:@"inception.m4v"];
//    [self addMovie:inception];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    //    inception.animationDuration = 1.0f;
    //    inception.frame = CGRectMake(0, 0, 512, 512);
    //    inception.center = CGPointMake(384, 512);
    
    gl.animationDuration = 1.0f;
    gl.frame = CGRectMake(0, 0, 512, 512);
    gl.center = CGPointMake(384, 512);
}

@end

//#import "C4WorkSpace.h"
//#import "GraphNode.h"
//#import "GraphEdge.h"
//
//C4Image *logo;
//C4Label *logolabel;
//
//NSMutableArray *graphNodeArray, *graphEdgeArray;
//
//@interface C4WorkSpace ()
//-(void)delayedSetup;
//@end
//
//@implementation C4WorkSpace
//-(void) setup {
//    logo = [C4Image imageNamed:@"C4LogoiPad-01.png"];
//    logo.origin = CGPointMake(0, 956);
//    [self addImage:logo];
//
//    logolabel = [C4Label labelWithText:@"A C4 Dataviz Prototype for SEED MEDIA" andFont:[C4Font fontWithName:@"DevanagariSangamMN" size:16]];
//    [logolabel sizeToFit];
//    logolabel.origin = CGPointMake(80, 995);
//    logolabel.textColor = [UIColor lightGrayColor];
//    [self addLabel:logolabel];
//
//    graphEdgeArray = [[NSMutableArray alloc] initWithCapacity:0];
//    for(int i = 0; i < 19; i++) [graphEdgeArray addObject:[GraphEdge new]];    
//    for(GraphEdge *ge in graphEdgeArray) [self addShape:ge];
//    
//    graphNodeArray = [[NSMutableArray alloc] initWithCapacity:0];
//    for(int i = 0; i < 20; i++) {
//        GraphNode *n = [GraphNode new];
//        if (i < 4) {
//            n.fillColor = C4RED;
//        }
//        [graphNodeArray addObject:n];
//        [self addShape:n];
//    }
//    [self performSelector:@selector(delayedSetup) withObject:self afterDelay:0.1];
//}

//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    [self printNodes];
//}

//-(void)delayedSetup {
//    ((C4Shape *)[graphNodeArray objectAtIndex:0]).center = CGPointMake(366.00,362.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:1]).center = CGPointMake(204.00,219.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:2]).center = CGPointMake(545.00,206.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:3]).center = CGPointMake(365.00,626.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:4]).center = CGPointMake(79.00,273.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:5]).center = CGPointMake(81.00,160.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:6]).center = CGPointMake(159.00,100.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:7]).center = CGPointMake(261.00,117.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:8]).center = CGPointMake(493.00,118.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:9]).center = CGPointMake(586.00,98.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:10]).center = CGPointMake(663.00,153.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:11]).center = CGPointMake(649.00,244.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:12]).center = CGPointMake(548.00,396.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:13]).center = CGPointMake(191.00,417.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:14]).center = CGPointMake(494.00,689.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:15]).center = CGPointMake(402.00,754.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:16]).center = CGPointMake(301.00,738.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:17]).center = CGPointMake(245.00,683.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:18]).center = CGPointMake(229.00,489.00);
//    ((C4Shape *)[graphNodeArray objectAtIndex:19]).center = CGPointMake(511.00,480.00);
//    
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:0]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:0];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:0]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:1];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:1]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:0];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:1]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:2];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:2]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:0];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:2]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:3];
//
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:3]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:1];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:3]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:4];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:4]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:1];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:4]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:5];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:5]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:1];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:5]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:6];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:6]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:1];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:6]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:7];
//    
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:7]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:2];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:7]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:8];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:8]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:2];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:8]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:9];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:9]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:2];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:9]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:10];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:10]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:2];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:10]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:11];
//
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:11]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:0];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:11]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:12];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:12]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:0];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:12]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:13];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:13]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:0];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:13]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:18];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:14]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:0];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:14]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:19];
//    
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:15]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:3];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:15]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:14];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:16]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:3];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:16]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:15];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:17]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:3];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:17]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:16];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:18]).nodeA = (GraphNode *)[graphNodeArray objectAtIndex:3];
//    ((GraphEdge *)[graphEdgeArray objectAtIndex:18]).nodeB = (GraphNode *)[graphNodeArray objectAtIndex:17];
//    
//    for(GraphEdge *ge in graphEdgeArray) [ge sync];
//}
//
//@end

/*
 GraphNode *n1, *n2;
 GraphEdge *e12;
 
 @implementation C4WorkSpace
 
 -(void) setup {
 n1 = [GraphNode new];
 [n1 addGesture:PAN name:@"panGesture" action:@"move:"];
 
 n2 = [GraphNode new];
 [n2 addGesture:PAN name:@"panGesture" action:@"move:"];
 
 e12 = [GraphEdge new];
 e12.nodeA = n1;
 e12.nodeB = n2;
 [e12 listenFor:@"moved" fromObject:n1 andRunMethod:@"syncToNodeA"];
 [e12 listenFor:@"moved" fromObject:n2 andRunMethod:@"syncToNodeB"];
 [self addShape:e12];
 [self addShape:n1];
 [self addShape:n2];
 
 } */

/* Bar Chart */
//#import "C4WorkSpace.h"
//#import "GraphBar.h"
//
//CFTimeInterval beginAnimationTime;
//NSMutableArray *graphBarArray;
//
//C4Image *logo;
//C4Label *logolabel;
//
//@interface C4WorkSpace ()
//-(void)delayedSetup;
//@end
//
//@implementation C4WorkSpace 
//-(void)setup {
//
//    logo = [C4Image imageNamed:@"C4LogoiPad-01.png"];
//    logo.origin = CGPointMake(0, 956);
//    [self addImage:logo];
//
//    logolabel = [C4Label labelWithText:@"A C4 Dataviz Prototype for SEED MEDIA" 
//                               andFont:[C4Font fontWithName:@"DevanagariSangamMN" 
//                                                       size:16]];
//    [logolabel sizeToFit];
//    logolabel.origin = CGPointMake(80, 995);
//    logolabel.textColor = [UIColor lightGrayColor];
//    [self addLabel:logolabel];
//    
//    graphBarArray = [[NSMutableArray alloc] initWithCapacity:0];
//    for(int i = 0; i < 14; i++) {
//        GraphBar *gb = [GraphBar new];
//        [gb rect:CGRectMake(0, 0, 36, 0)];
//        [self addShape:gb];
//        [self addLabel:gb.barLabel];
//        [self performSelector:@selector(delayedSetup) withObject:self afterDelay:0.1];
//        [graphBarArray addObject:gb];
//    }
//    
//    beginAnimationTime = CACurrentMediaTime() - 3;
//}
//
//-(void)delayedSetup {
//    for(int i = 0; i < [graphBarArray count]; i++) {
//        ((GraphBar *)[graphBarArray objectAtIndex:i]).origin = CGPointMake(i*48+48, 512);
//    }
//}
//
//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    if(CACurrentMediaTime() - beginAnimationTime > 2.1f) {
//        for(int i = 0; i < [graphBarArray count]; i++) {
//            ((GraphBar *)[graphBarArray objectAtIndex:i]).height = [C4Math randomInt:300];
//        }
//        beginAnimationTime = CACurrentMediaTime();
//    }
//}
//@end

/* Graph */
//#import "C4WorkSpace.h"
//#import "GraphLine.h"
//#import "GraphLineButton.h"
//
//C4Image *logo;
//C4Label *logolabel;
//
//GraphLine *graphLineA, *graphLineB, *graphLineC;
//GraphLineButton *graphLineButtonA, *graphLineButtonB, *graphLineButtonC;
//
//@interface C4WorkSpace ()
//-(GraphLine *)setupGraphLineA;
//-(GraphLine *)setupGraphLineB;
//-(GraphLine *)setupGraphLineC;
//@end
//
//@implementation C4WorkSpace 
//
//-(void)setup {
//    logo = [C4Image imageNamed:@"C4LogoiPad-01.png"];
//    logo.origin = CGPointMake(0, 956);
//    [self addImage:logo];
//
//    logolabel = [C4Label labelWithText:@"A C4 Dataviz Prototype for SEED MEDIA" 
//                               andFont:[C4Font fontWithName:@"DevanagariSangamMN" size:16]];
//    [logolabel sizeToFit];
//    logolabel.origin = CGPointMake(80, 995);
//    logolabel.textColor = [UIColor lightGrayColor];
//    [self addLabel:logolabel];
//
//    graphLineButtonA = [GraphLineButton new];
//    graphLineButtonA.fillColor = [C4GREY colorWithAlphaComponent:0.25];
//    graphLineButtonA.strokeColor = C4GREY;
//    graphLineButtonA.center = CGPointMake(192, 800);
//    [self addShape:graphLineButtonA];
//
//    graphLineButtonB = [GraphLineButton new];
//    graphLineButtonB.fillColor = [C4RED colorWithAlphaComponent:0.25];
//    graphLineButtonB.strokeColor = C4RED;
//    graphLineButtonB.center = CGPointMake(384, 800);
//    [self addShape:graphLineButtonB];
//
//    graphLineButtonC = [GraphLineButton new];
//    graphLineButtonC.fillColor = [C4BLUE colorWithAlphaComponent:0.25];
//    graphLineButtonC.strokeColor = C4BLUE;
//    graphLineButtonC.center = CGPointMake(576, 800);
//    [self addShape:graphLineButtonC];
//    
//    graphLineA = [self setupGraphLineA];
//    [graphLineA listenFor:@"animateToBeginning" 
//               fromObject:graphLineButtonA 
//             andRunMethod:@"animateToBeginning"];
//    [graphLineA listenFor:@"animateToEnd" 
//               fromObject:graphLineButtonA 
//             andRunMethod:@"animateToEnd"];
//    [self addShape:graphLineA];    
//    
//    graphLineB = [self setupGraphLineB];
//    [graphLineB listenFor:@"animateToBeginning" 
//               fromObject:graphLineButtonB 
//             andRunMethod:@"animateToBeginning"];
//    [graphLineB listenFor:@"animateToEnd" 
//               fromObject:graphLineButtonB 
//             andRunMethod:@"animateToEnd"];
//    [self addShape:graphLineB];  
//    
//    graphLineC = [self setupGraphLineC];
//    [graphLineC listenFor:@"animateToBeginning" 
//               fromObject:graphLineButtonC 
//             andRunMethod:@"animateToBeginning"];
//    [graphLineC listenFor:@"animateToEnd" 
//               fromObject:graphLineButtonC 
//             andRunMethod:@"animateToEnd"];
//    [self addShape:graphLineC];  
//
//}
//
//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//}
//
//-(GraphLine *)setupGraphLineA {
//    CGPoint graphPoints[49] = {CGPointMake(0.00,503.00), CGPointMake(16.00,485.00), CGPointMake(32.00,480.00), CGPointMake(48.00,452.00), CGPointMake(64.00,464.00), CGPointMake(80.00,432.00), CGPointMake(96.00,426.00), CGPointMake(112.00,399.00), CGPointMake(128.00,389.00), CGPointMake(144.00,370.00), CGPointMake(160.00,373.00), CGPointMake(176.00,368.00), CGPointMake(192.00,392.00), CGPointMake(208.00,357.00), CGPointMake(224.00,325.00), CGPointMake(240.00,313.00), CGPointMake(256.00,368.00), CGPointMake(272.00,309.00), CGPointMake(288.00,372.00), CGPointMake(304.00,307.00), CGPointMake(320.00,353.00), CGPointMake(336.00,326.00), CGPointMake(352.00,337.00), CGPointMake(368.00,337.00), CGPointMake(384.00,351.00), CGPointMake(400.00,401.00), CGPointMake(416.00,390.00), CGPointMake(432.00,378.00), CGPointMake(448.00,410.00), CGPointMake(464.00,616.00), CGPointMake(480.00,666.00), CGPointMake(496.00,689.00), CGPointMake(512.00,485.00), CGPointMake(528.00,420.00), CGPointMake(544.00,400.00), CGPointMake(560.00,408.00), CGPointMake(576.00,390.00), CGPointMake(592.00,405.00), CGPointMake(608.00,433.00), CGPointMake(624.00,397.00), CGPointMake(640.00,346.00), CGPointMake(656.00,311.00), CGPointMake(672.00,318.00), CGPointMake(688.00,327.00), CGPointMake(704.00,322.00), CGPointMake(720.00,327.00), CGPointMake(736.00,430.00), CGPointMake(752.00,482.00), CGPointMake(768.00,616.00)};
//    
//    GraphLine *graphLine = [GraphLine new];
//    [graphLine polygon:graphPoints pointCount:49];
//    graphLine.strokeColor = C4GREY;
//    
//    return graphLine;
//}
//
//-(GraphLine *)setupGraphLineB {
//    CGPoint graphPoints[49] = {CGPointMake(0.00,494.00), CGPointMake(16.00,509.00), CGPointMake(32.00,540.00), CGPointMake(48.00,553.00), CGPointMake(64.00,587.00), CGPointMake(80.00,559.00), CGPointMake(96.00,538.00), CGPointMake(112.00,545.00), CGPointMake(128.00,574.00), CGPointMake(144.00,606.00), CGPointMake(160.00,613.00), CGPointMake(176.00,644.00), CGPointMake(192.00,671.00), CGPointMake(208.00,625.00), CGPointMake(224.00,584.00), CGPointMake(240.00,611.00), CGPointMake(256.00,587.00), CGPointMake(272.00,592.00), CGPointMake(288.00,631.00), CGPointMake(304.00,650.00), CGPointMake(320.00,605.00), CGPointMake(336.00,558.00), CGPointMake(352.00,612.00), CGPointMake(368.00,558.00), CGPointMake(384.00,425.00), CGPointMake(400.00,409.00), CGPointMake(416.00,390.00), CGPointMake(432.00,361.00), CGPointMake(448.00,316.00), CGPointMake(464.00,319.00), CGPointMake(480.00,282.00), CGPointMake(496.00,250.00), CGPointMake(512.00,222.00), CGPointMake(528.00,235.00), CGPointMake(544.00,198.00), CGPointMake(560.00,211.00), CGPointMake(576.00,176.00), CGPointMake(592.00,183.00), CGPointMake(608.00,170.00), CGPointMake(624.00,188.00), CGPointMake(640.00,202.00), CGPointMake(656.00,190.00), CGPointMake(672.00,147.00), CGPointMake(688.00,115.00), CGPointMake(704.00,117.00), CGPointMake(720.00,149.00), CGPointMake(736.00,186.00), CGPointMake(752.00,335.00), CGPointMake(768.00,397.00)};
//    
//    GraphLine *graphLine = [GraphLine new];
//    [graphLine polygon:graphPoints pointCount:49];
//    graphLine.strokeColor = C4RED;
//    
//    return graphLine;
//}
//
//-(GraphLine *)setupGraphLineC {
//    CGPoint graphPoints[49] = {CGPointMake(0.00,491.00), CGPointMake(16.00,495.00), CGPointMake(32.00,517.00), CGPointMake(48.00,536.00), CGPointMake(64.00,554.00), CGPointMake(80.00,586.00), CGPointMake(96.00,610.00), CGPointMake(112.00,627.00), CGPointMake(128.00,650.00), CGPointMake(144.00,645.00), CGPointMake(160.00,643.00), CGPointMake(176.00,647.00), CGPointMake(192.00,648.00), CGPointMake(208.00,649.00), CGPointMake(224.00,663.00), CGPointMake(240.00,689.00), CGPointMake(256.00,687.00), CGPointMake(272.00,665.00), CGPointMake(288.00,628.00), CGPointMake(304.00,588.00), CGPointMake(320.00,556.00), CGPointMake(336.00,515.00), CGPointMake(352.00,471.00), CGPointMake(368.00,410.00), CGPointMake(384.00,417.00), CGPointMake(400.00,415.00), CGPointMake(416.00,383.00), CGPointMake(432.00,358.00), CGPointMake(448.00,339.00), CGPointMake(464.00,332.00), CGPointMake(480.00,326.00), CGPointMake(496.00,286.00), CGPointMake(512.00,286.00), CGPointMake(528.00,277.00), CGPointMake(544.00,273.00), CGPointMake(560.00,271.00), CGPointMake(576.00,271.00), CGPointMake(592.00,274.00), CGPointMake(608.00,274.00), CGPointMake(624.00,277.00), CGPointMake(640.00,275.00), CGPointMake(656.00,271.00), CGPointMake(672.00,271.00), CGPointMake(688.00,261.00), CGPointMake(704.00,266.00), CGPointMake(720.00,258.00), CGPointMake(736.00,143.00), CGPointMake(752.00,112.00), CGPointMake(768.00,98.00)};
//    
//    GraphLine *graphLine = [GraphLine new];
//    [graphLine polygon:graphPoints pointCount:49];
//    graphLine.strokeColor = C4BLUE;
//   
//    return graphLine;
//}
//
//@end
