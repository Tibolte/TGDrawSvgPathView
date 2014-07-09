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

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _tgView = [[TGDrawSvgPathView alloc] initWithFrame:CGRectMake(40.0, 70.0, 250.0, 250.0)];
    [_tgView setPathFromSvg:@"cloud" strokeColor:[UIColor blackColor] duration:2.0];
    [self.view addSubview:_tgView];
}


- (IBAction)btnAnimateClicked:(id)sender {
    _tgView.layer.sublayers = nil;

    [_tgView setPathFromSvg:@"iceland" strokeColor:[UIColor blackColor] duration:2.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
