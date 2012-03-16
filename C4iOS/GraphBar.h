//
//  GraphBar.h
//  C4iOS
//
//  Created by Travis Kirton on 12-03-15.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "C4Shape.h"

@interface GraphBar : C4Shape 

-(void)toggleLabel;

@property (readwrite, nonatomic) CGFloat height;
@property (readwrite, strong, nonatomic) NSString *name;
@property (readonly, strong) C4Label *barLabel;
@end
