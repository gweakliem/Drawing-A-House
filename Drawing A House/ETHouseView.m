//
//  ETHouseView.m
//  Drawing A House
//
//  Created by Gordon Weakliem on 12/1/13.
//  Copyright (c) 2013 Eighty Twenty. All rights reserved.
//

#import "ETHouseView.h"

@implementation ETHouseView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    bezierPath.lineWidth = 2.0;
    [[UIColor blackColor] setStroke];
    
    // Main house outline
    [bezierPath moveToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 5/6.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width, 1/6.0*self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 1/2.0*self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 5/6.0*self.bounds.size.height)];
    [bezierPath closePath];
    [bezierPath stroke];
    // color the house
    [[UIColor yellowColor] setFill];
    [bezierPath fill];
    
    // add window
    UIBezierPath *windowPath = [UIBezierPath bezierPathWithRect:CGRectMake(1/4.0 * self.bounds.size.width, 7/12.0 * self.bounds.size.height, 1/6.0 * self.bounds.size.width, 1/6.0 * self.bounds.size.height)];
    [[UIColor blueColor] setFill];
    [windowPath fill];
    [windowPath stroke];
    
    // add door
    UIBezierPath *doorPath = [UIBezierPath bezierPathWithRect:CGRectMake(1/2.0 * self.bounds.size.width, 7/12.0 * self.bounds.size.height, 1/6.0 * self.bounds.size.width, 1/4.0 * self.bounds.size.height)];
    [[UIColor redColor] setFill];
    [doorPath fill];
    [doorPath stroke];
    

    // add chimney
    
    
    // change roof color
    

}


@end
