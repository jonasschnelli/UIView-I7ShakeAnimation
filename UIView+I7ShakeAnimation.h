//
//  UIView+I7ShakeAnimation.h
//  
//
//  Created by Jonas Schnelli on 23.01.11.
//  Copyright 2011 include7 AG. All rights reserved.
//



@interface UIView (I7ShakeAnimation)

/*!
 @abstract			Performes a easy X axis shake
 @result			
 @discussion		
 */
- (void)shakeX;

/*!
 @abstract			Performes a customized X axis shake
 @result			
 @discussion		You can give a special offset (the amount of pixel to break out) and the breakfactor (which must be < 1). A animation duration is also possible
 */
- (void)shakeXWithOffset:(CGFloat)aOffset breakFactor:(CGFloat)aBreakFactor duration:(CGFloat)aDuration maxShakes:(NSInteger)maxShakes;

@end
