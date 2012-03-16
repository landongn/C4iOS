//
//  GraphLineButton.h
//  C4iOS
//
//  Created by Travis Kirton on 12-03-15.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "C4Shape.h"

@interface GraphLineButton : C4Shape 

-(void)animateToEnd;
-(void)animateToBeginning;

@property (readonly) CFTimeInterval animationBeginTime;
@property (readonly, getter = isAnimationEnded) BOOL animationEnded;
@property (readonly, nonatomic, getter = isAnimating) BOOL animating;

@end
