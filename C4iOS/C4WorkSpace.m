//
// C4WorkSpace.m
//
// Created by Travis Kirton
//

@implementation C4WorkSpace {
    C4Image *currentSlideImage;
    C4Label *label;
    NSInteger currentSlide;
    BOOL shouldChange;
    NSArray *slideImageNames, *currentSlideText;
}

-(void)setup {
    [self setupBackgroundImage];
    [self setupSlideText];
    [self setupSlideImageNames];
    [self setupCurrentSlideImage];
    [self setupLabel];
    [self addGesture:SWIPERIGHT name:@"right" action:@"swipedRight"];
    [self addGesture:SWIPELEFT name:@"left" action:@"swipedLeft"];
    [self addGesture:PAN name:@"pan" action:@"pan:"];
    [self minimumNumberOfTouches:2 forGesture:@"pan"];
}

-(void)setupBackgroundImage {
    UIImage *backgroundImage = [UIImage imageNamed:@"bg"];
    self.canvas.backgroundColor = [UIColor colorWithPatternImage:backgroundImage];
    backgroundImage = nil;
}

-(void)setupSlideText {
    NSURL *textUrl = [[NSBundle mainBundle] URLForResource:@"text" withExtension:@"txt"];
    NSString *text = [NSString stringWithContentsOfURL:textUrl encoding:NSUTF8StringEncoding error:nil];
    text = [text lowercaseString];
    currentSlideText = [text componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
//    for(int i = 0; i < [currentSlideText count]; i++) {
//        C4Log(@"%d - %@", i, currentSlideText[i]);
//    }
}

-(void)setupLabel {
    C4Font *font = [C4Font fontWithName:@"AvenirNext-UltraLight" size:80.0f];
    label = [C4Label labelWithText:currentSlideText[0] font:font];
    label.center = self.canvas.center;
    label.userInteractionEnabled = NO;
    [self.canvas addLabel:label];
}

-(void)setupSlideImageNames {
    NSMutableArray *nma = [NSMutableArray arrayWithCapacity:0];
    for(int i = 0; i < [currentSlideText count]; i++) [nma addObject:@""];
    nma[3] = @"artist";
    nma[4] = @"saggy";
    nma[5] = @"researcher";
    nma[6] = @"engineer";
    nma[8] = @"architect";
    nma[10] = @"table";
    nma[11] = @"smash houses";
    nma[13] = @"cook";
    nma[18] = @"canadian";
    nma[20] = @"chemistry";
    nma[21] = @"linear";
    nma[22] = @"philosophy";
    nma[23] = @"genetics";
    nma[26] = @"travel";
    nma[27] = @"23";
    nma[30] = @"architecture";
    nma[31] = @"design";
    nma[32] = @"kinesthetics";
    nma[33] = @"experimental";
    nma[35] = @"travel";
    nma[36] = @"futurelab";
    nma[46] = @"kirtonzug";
    nma[48] = @"vodafone";
    nma[49] = @"stadtmodell";
    nma[50] = @"zeitraum";
    nma[53] = @"left";
    nma[54] = @"banff";
    nma[55] = @"visualarts";
    nma[56] = @"dance";
    nma[57] = @"music";
    nma[58] = @"filmmedia";
    nma[59] = @"theatre";
    nma[60] = @"birs";
    nma[62] = @"typo";
    nma[65] = @"rethinking";
    nma[66] = @"innovis";
    nma[67] = @"acad";
    nma[81] = @"floored";
    nma[82] = @"hammer";
    nma[84] = @"p50f";
    nma[89] = @"desktop";
    nma[91] = @"mobile";
    nma[92] = @"c4";
    nma[105] = @"circle";
    nma[109] = @"canvas";
    nma[111] = @"shapes";
    nma[112] = @"images";
    nma[113] = @"text";
    nma[114] = @"opengl";
    nma[125] = @"residency";
    nma[141] = @"april";
    nma[142] = @"holo";
    nma[145] = @"c4";
    slideImageNames = nma;
}

-(void)setupCurrentSlideImage {
    NSString *firstSlideImageName = slideImageNames[0] == @"" ? @"clear" : slideImageNames[0];
    currentSlideImage = [C4Image imageNamed:firstSlideImageName];
    currentSlideImage.center = self.canvas.center;
    currentSlideImage.userInteractionEnabled = NO;
    [self.canvas addImage:currentSlideImage];
}

-(void)swipedLeft {
    if(currentSlide > 0) {
        currentSlide --;
        [self loadCurrentSlide];
    }
}

-(void)swipedRight {
    if(currentSlide < [currentSlideText count]-1) {
        currentSlide ++;
        [self loadCurrentSlide];
    }
}

-(void)transitionToLabel:(NSInteger)slideNumber {
    NSString *newText = currentSlideText[slideNumber];
    if(slideImageNames[slideNumber] != @"") {
        newText = @"";
    }
    if(label.text != newText) {
        label.animationDuration = 0.125f;
        label.alpha = 0.0f;
        [self runMethod:@"revealLabel:" withObject:newText afterDelay:0.25f];
    }
}

-(void)revealLabel:(NSString *)newText {
    label.animationDuration = 0.0f;
    label.text = newText;
    [label sizeToFit];
    label.center = self.canvas.center;
    label.animationDuration = 0.125f;
    label.alpha = 1.0f;
}

-(void)transitionToSlideImage:(NSInteger)slideNumber {
    C4Image *next;
    if(slideImageNames[slideNumber] == @"" || slideNumber >= [slideImageNames count]) next = [C4Image imageNamed:@"clear"];
    else{
        next = [C4Image imageNamed:slideImageNames[slideNumber]];
    }
    currentSlideImage.animationDuration = 0.25f;
    if(currentSlideImage.alpha == 0.0f) currentSlideImage.alpha = 1.0f;
    currentSlideImage.image = next;
    currentSlideImage.center = self.canvas.center;
    next = nil;
}

-(void)stepLeft {
    if(currentSlide > 0) {
        currentSlide --;
    }
}

-(void)stepRight {
    if(currentSlide < [currentSlideText count]-1) {
        currentSlide ++;
    }
}

-(void)pan:(UIPanGestureRecognizer *)panGesture {
    if(panGesture.state == UIGestureRecognizerStateBegan) {
        currentSlideImage.alpha = 0.0f;
        return;
    }
    if(panGesture.state == UIGestureRecognizerStateEnded) {
        [self transitionToSlideImage:currentSlide];
        return;
    }
    if ([panGesture translationInView:self.canvas].x > 10) {
        if(currentSlide < [slideImageNames count]-1) {
            currentSlide ++;
            [self transitionToLabel:currentSlide];
        }
        [panGesture setTranslation:CGPointZero inView:self.canvas];
    } else if ([panGesture translationInView:self.canvas].x < -10) {
        if(currentSlide > 0) {
            currentSlide --;
            [self transitionToLabel:currentSlide];
        }
        [panGesture setTranslation:CGPointZero inView:self.canvas];
    }
}

-(void)loadCurrentSlide {
    [self transitionToSlideImage:currentSlide];
    [self transitionToLabel:currentSlide];
}

@end
