//
//  BerKeyFrameViewController.m
//  AdvancedUISDKUseAge
//
//  Created by kong on 2017/12/2.
//  Copyright © 2017年 konglee. All rights reserved.
//

#import "BerKeyFrameViewController.h"
#include <iostream>

#import "AnimationManager.h"

@interface BerKeyFrameViewController ()

@property (nonatomic, strong) CAShapeLayer *shape_IMGLayer;

@end

@implementation BerKeyFrameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initUILayer];
}

- (void)initUILayer
{
    UIImage *img = [UIImage imageNamed:@"zlc.jpg"];
    _shape_IMGLayer = [CAShapeLayer layer];
    _shape_IMGLayer.frame = CGRectMake(20, 150, 200, 300);
    _shape_IMGLayer.contents = (__bridge id _Nullable)(img.CGImage);
    [self.view.layer addSublayer:_shape_IMGLayer];
    
}
- (IBAction)beginAnimation:(UIButton *)sender
{
    CABasicAnimation *basicAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale.y"];
    basicAnimation.toValue = @1;
    basicAnimation.fromValue = @0;
    basicAnimation.duration = 3.0f;
    basicAnimation.removedOnCompletion = false;
    basicAnimation.fillMode = kCAFillModeBoth;
    [_shape_IMGLayer addAnimation:basicAnimation forKey:@"animation"];
    
}

- (void)testCPPTemplate
{
//    int a = AnimationManager::coutMax(10, 11);
    AnimationManager::abc = 10;
    std::cout << AnimationManager::abc<< std::endl;
    
}

- (IBAction)failureAnimation:(id)sender
{
    
}

- (IBAction)stopAnimation:(UIButton *)sender
{
    [self testCPPTemplate];
}




@end