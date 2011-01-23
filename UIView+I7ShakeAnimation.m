//
//  UIView+I7ShakeAnimation.m
//  
//
//  Created by Jonas Schnelli on 23.01.11.
//  Copyright 2011 include7 AG. All rights reserved.
//

#import "UIView+I7ShakeAnimation.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (I7ShakeAnimation)

- (void)shakeX {
	[self shakeXWithOffset:40.0 breakFactor:0.85 duration:1.5 maxShakes:30];
}

- (void)shakeXWithOffset:(CGFloat)aOffset breakFactor:(CGFloat)aBreakFactor duration:(CGFloat)aDuration maxShakes:(NSInteger)maxShakes {
	CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
	[animation setDuration:aDuration];
	
	
	NSMutableArray *keys = [NSMutableArray arrayWithCapacity:20];
	int infinitySec = maxShakes;
	while(aOffset > 0.01) {
		[keys addObject:[NSValue valueWithCGPoint:CGPointMake(self.center.x - aOffset, self.center.y)]];
		aOffset *= aBreakFactor;
		[keys addObject:[NSValue valueWithCGPoint:CGPointMake(self.center.x + aOffset, self.center.y)]];
		aOffset *= aBreakFactor;
		infinitySec--;
		if(infinitySec <= 0) {
			break;
		}
	}
	
	animation.values = keys;
	
	
	[self.layer addAnimation:animation forKey:@"position"];
}

@end
