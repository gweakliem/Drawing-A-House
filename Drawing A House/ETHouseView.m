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
  
    [bezierPath moveToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 5/6.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width, 1/6.0*self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 1/2.0*self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 5/6.0*self.bounds.size.height)];
    [bezierPath closePath];
    
    [[UIColor blackColor] setStroke];
    [bezierPath stroke];
}


@end
