//
//  MyScrollView.m
//  TouchScrollView
//
//  Copyright 2013 zmx. All rights reserved.
//

#import "MyScrollView.h"


@implementation UIScrollView (my)

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(!self.dragging)
    {
        [[self nextResponder] touchesBegan:touches withEvent:event];
    }
    else {
        [super touchesBegan:touches withEvent:event];
    }
//    
    //NSLog(@"MyScrollView touch Began");
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(!self.dragging) {
        [[self nextResponder] touchesMoved:touches withEvent:event];
    }
    else {
        [super touchesMoved:touches withEvent:event];
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(!self.dragging)
    {
        [[self nextResponder] touchesEnded:touches withEvent:event];
    }
    else {
        [super touchesEnded:touches withEvent:event];
    }
}

@end
