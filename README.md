TGDrawSvgPathView
=================

an IOS helper class to draw animated paths from SVG files

![](https://raw.githubusercontent.com/Tibolte/TGDrawSvgPathView/master/demosvg.gif)

##Usage

    TGDrawSvgPathView *tgView = [[TGDrawSvgPathView alloc] initWithFrame:CGRectMake(40.0, 70.0, 250.0, 250.0)];
    [tgView setPathFromSvg:@"cloud" strokeColor:[UIColor blackColor] duration:2.0];
    [self.view addSubview:tgView];
    
##Requirements

ARC and iOS7

### Using CocoaPods

TGDrawSvgPathView is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

    pod "TGDrawSvgPathView"

### Manual

Download the project and add the folder `Classes` containing the classes `TGDrawSvgPathView` and `PocketSVG` to your project.

## Author

Thibault Guégan, thibault.guegan@gmail.com
Linkedin: https://www.linkedin.com/profile/view?id=93515047

## License

TGDrawSvgPathView is available under the MIT license. See the LICENSE file for more info.
