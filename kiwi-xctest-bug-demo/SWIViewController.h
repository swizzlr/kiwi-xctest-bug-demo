//
//  SWIViewController.h
//  kiwi-xctest-bug-demo
//
//  Created by Swizzlr on 19/06/2014.
//  Copyright (c) 2014 swizzlr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SWIViewController : UIViewController

- (void)doSomeAsynchronousThing:(void(^)())completion;

@end
