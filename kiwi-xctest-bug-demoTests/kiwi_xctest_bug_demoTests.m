//
//  kiwi_xctest_bug_demoTests.m
//  kiwi-xctest-bug-demoTests
//
//  Created by Swizzlr on 19/06/2014.
//  Copyright (c) 2014 swizzlr. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import <XCTest/XCTest.h>
#import "SWIViewController.h"

@interface MyObserver : XCTestObserver
@end
@implementation MyObserver
@end

SPEC_BEGIN(MySpec)

describe(@"When running Kiwi under XCTest", ^{
    beforeEach(^{
        NSLog(@"Before Each");
    });
    it(@"when running an async test it will spin the run loop and run the same node twice", ^{
        SWIViewController * viewController = [[SWIViewController alloc] init];
        BOOL __block done = NO;
        [viewController doSomeAsynchronousThing:^{
            done = YES;
        }];
        [[expectFutureValue(theValue(done)) shouldEventuallyBeforeTimingOutAfter(6)] beTrue];
    });
});

SPEC_END