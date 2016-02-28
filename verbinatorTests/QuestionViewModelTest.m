//
//  QuestionViewModelTest.m
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FakeQuestionView.h"
#import "VerbinatorQuestionViewModel.h"
#import "FakeQuestionGenerator.h"

@interface QuestionViewModelTest : XCTestCase

@end

@implementation QuestionViewModelTest

- (void)testViewIsImmediatelyToldToShowAQuestion {
    VerbinatorQuestion *expectedQuestion = [VerbinatorQuestion new];
    FakeQuestionGenerator *questionGenerator = [[FakeQuestionGenerator alloc] initWithQuestion:expectedQuestion];
    
    FakeQuestionView *fakeQuestionView = [FakeQuestionView new];
    [[VerbinatorQuestionViewModel alloc] initWithQuestionView:fakeQuestionView andQuestionGenerator:questionGenerator];
    
    XCTAssertEqual(fakeQuestionView.setQuestionCalledWithQuestion, expectedQuestion);
}

@end
