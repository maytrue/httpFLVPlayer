//
//  ViewController.m
//  httpFLVPlayer
//
//  Created by guowei on 1/14/16.
//  Copyright © 2016 guowei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURL *url = [NSURL URLWithString:@"http://"];
    
    _playerController = [[HTTPFLVPlayerController alloc] initPlayerWithView:self.view playURL:url];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
