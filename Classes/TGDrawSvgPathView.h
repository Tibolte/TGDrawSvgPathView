//
//  TGDrawSvgPathView.h
//  SVGPathDrawing
//
//  Created by Thibault Guégan on 09/07/2014.
//  Copyright (c) 2014 Skyr. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PocketSVG.h"

@interface TGDrawSvgPathView : UIView

@property (nonatomic, strong) CAShapeLayer* shapeView;
@property (nonatomic, strong) UIColor* strokeColor;
@property (nonatomic)         CFTimeInterval animationDuration;

- (void)setPathFromSvg:(NSString*)fileName strokeColor:(UIColor *)color duration:(CFTimeInterval)time;

@end
