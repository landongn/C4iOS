//
//  MyShape.m
//  C4iOS
//
//  Created by moi on 13-02-10.
//  Copyright (c) 2013 POSTFL. All rights reserved.
//

#import "MyShape.h"

@implementation MyShape

-(void)customMethod {
    C4Log(@"customMethod");
}

-(void)singleTap {
    C4Log(@"singleTap");
}

-(void)singleTap:(id)sender {
    C4Log(@"singleTap with %@",sender);
}


-(void)doubleTap {
    C4Log(@"doubleTap");
}

-(void)swipedDown {
    C4Log(@"swipedDown");
}
@end
