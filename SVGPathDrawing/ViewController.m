//
//  ViewController.m
//  SVGPathDrawing
//
//  Created by Thibault Guégan on 08/07/2014.
//  Copyright (c) 2014 Skyr. All rights reserved.
//

#import "ViewController.h"
#import "TGDrawSvgPathView.h"

@interface ViewController ()

@property (nonatomic, strong) CAShapeLayer* shapeView;
@property (nonatomic, strong) TGDrawSvgPathView* tgView;
@property (nonatomic)         CFTimeInterval animationDuration;

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.mySlider.minimumValue = 2;
    self.mySlider.maximumValue = 5;
    
    NSInteger val = lround(self.mySlider.value);
    
    _animationDuration = (float) val;
    
    [_lblDuration setText:[NSString stringWithFormat:@"duration: %ld s", val]];
    
    _tgView = [[TGDrawSvgPathView alloc] initWithFrame:CGRectMake(40.0, 70.0, 250.0, 250.0)];
    [_tgView setPathFromSvg:@"cloud" strokeColor:[UIColor blackColor] duration:_animationDuration];
    [self.view addSubview:_tgView];
}


- (IBAction)btnSvgCloud:(id)sender {
    _tgView.layer.sublayers = nil;
    
    [_tgView setPathFromSvg:@"cloud" strokeColor:[UIColor blackColor] duration:_animationDuration];
}
- (IBAction)btnSvgIceland:(id)sender {
    _tgView.layer.sublayers = nil;
    
    [_tgView setPathFromSvg:@"iceland" strokeColor:[UIColor blackColor] duration:_animationDuration];
}
- (IBAction)btnSvgGrid:(id)sender {
    _tgView.layer.sublayers = nil;
    
    [_tgView setPathFromSvg:@"criss6" strokeColor:[UIColor blackColor] duration:_animationDuration];
}
- (IBAction)btnSvgBike:(id)sender {
    _tgView.layer.sublayers = nil;
    
    [_tgView setPathFromSvg:@"world17" strokeColor:[UIColor blackColor] duration:_animationDuration];
}
- (IBAction)btnSvgSmiley:(id)sender {
    _tgView.layer.sublayers = nil;
    
    [_tgView setPathFromSvg:@"replay2" strokeColor:[UIColor blackColor] duration:_animationDuration];
}
- (IBAction)btnSvgStar:(id)sender {
    _tgView.layer.sublayers = nil;
    
    [_tgView setPathFromSvg:@"dropbox10" strokeColor:[UIColor blackColor] duration:_animationDuration];
}


- (IBAction)sliderChanged:(id)sender {
    
    NSInteger val = lround(self.mySlider.value);
    
    _animationDuration = (float) val;
    
    [_lblDuration setText:[NSString stringWithFormat:@"duration: %ld s", val]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
