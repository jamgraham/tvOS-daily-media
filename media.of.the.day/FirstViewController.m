//
//  FirstViewController.m
//  media.of.the.day
//
//  Created by James Graham on 9/14/15.
//  Copyright © 2015 Graham, James. All rights reserved.
//

#import "FirstViewController.h"
@import AVFoundation;

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AVPlayer *avPlayer = [AVPlayer playerWithURL:[NSURL URLWithString:@""]];
    AVPlayerLayer *avPlayerLayer = [AVPlayerLayer playerLayerWithPlayer:avPlayer];
    
    avPlayerLayer.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view.layer addSublayer:avPlayerLayer];
    
    [avPlayer play];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
