//
//  GraphBar.m
//  C4iOS
//
//  Created by Travis Kirton on 12-03-15.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "GraphBar.h"

@implementation GraphBar
@synthesize barLabel, name = _name, height = _height;

-(void)setup {
    self.lineWidth = 0.0f;
    barLabel = [C4Label labelWithText:@"Graph Bar" andFont:[C4Font fontWithName:@"helvetica" size:20]];
    [barLabel sizeToFit];
    barLabel.transform = CGAffineTransformMakeRotation(QUARTER_PI);
    barLabel.origin = self.origin;
    barLabel.textColor = C4RED;
}

-(void)setName:(NSString *)name {
    barLabel.text = name;
}

-(NSString *)name {
    return barLabel.text;
}

-(void)setHeight:(CGFloat)height {
    self.animationDuration = 2.0f;
    CGRect newFrame = CGRectMake(self.origin.x, self.origin.y-height, self.frame.size.width, height);
    [self rect:newFrame];
    barLabel.text = [NSString stringWithFormat:@"%4.2f",height];
}

-(void)setOrigin:(CGPoint)origin {
    [super setOrigin:origin];
    CGPoint labelOrigin = self.origin;
    labelOrigin.x -= self.frame.size.width / 3.0f;
    labelOrigin.y += self.frame.size.height + 10.0f;
    barLabel.origin = labelOrigin;
}

-(void)touchesBegan {
    [self toggleLabel];
}

-(void)toggleLabel {
    self.barLabel.animationDuration = 1.0f;
    if(self.barLabel.alpha == 0.0f) {
        self.barLabel.alpha = 1.0f;
    } else {
        self.barLabel.alpha = 0.0f;
    }
}

@end
