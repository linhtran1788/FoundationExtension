//
//  UIControl.h
//  FoundationExtension
//
//  Created by Jeong YunWon on 10. 3. 11..
//  Copyright 2010 youknowone.org All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (Shortcuts)

- (void)sendActionsForControlEvents:(UIControlEvents)controlEvents withEvent:(UIEvent *)event;

@end

/*!
 *  @brief Touch event internal protocol signature
 */
@protocol UIControlTouchEvents

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;

@end
