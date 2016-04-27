//
//  VerbinatorQuestionViewControllerTest.m
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "VerbinatorQuestionViewController.h"

@interface VerbinatorQuestionViewControllerTest : XCTestCase

@end

@implementation VerbinatorQuestionViewControllerTest

- (void)testThatVerbinatorQuestionViewControllerCanShowAQuestion {
    NSString *questionString = @"some question";
    
    VerbinatorQuestionViewController *questionViewController = [[VerbinatorQuestionViewController alloc]  init];

    [questionViewController view];
    [questionViewController setQuestion: questionString];

    NSArray *subviews = [questionViewController.view subviews];
    
    for (NSObject *subview in subviews) {
        if ([subview isKindOfClass:[UILabel class]]) {
            UILabel *label = (UILabel *)subview;
            XCTAssertEqualObjects(label.text, questionString);
        }
    }
}

@end
