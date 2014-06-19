//
//  SWIViewController.m
//  kiwi-xctest-bug-demo
//
//  Created by Swizzlr on 19/06/2014.
//  Copyright (c) 2014 swizzlr. All rights reserved.
//

#import "SWIViewController.h"

@interface SWIViewController ()

@end

@implementation SWIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)doSomeAsynchronousThing:(void (^)())completion {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        completion();
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
