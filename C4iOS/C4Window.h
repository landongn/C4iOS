//
//  C4Window.h
//  C4iOSDevelopment
//
//  Created by Travis Kirton on 11-10-07.
//  Copyright (c) 2011 mediart. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface C4Window : UIWindow 
    
-(void)addShape:(C4Shape *)shape;
-(void)addText:(C4Text *)text;

@property (readwrite, strong) C4CanvasController *canvasController;
@end
