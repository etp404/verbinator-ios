//
//  QuestionViewModelTest.m
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "FakeQuestionGenerator.h"
#import "FakeQuestionView.h"
#import "VerbinatorQuestionViewModel.h"
#import <XCTest/XCTest.h>

@interface QuestionViewModelTest : XCTestCase

@end

@implementation QuestionViewModelTest

- (void)testViewIsImmediatelyToldToShowAQuestion {
  VerbinatorQuestion *expectedQuestion = [VerbinatorQuestion new];
  FakeQuestionGenerator *questionGenerator =
      [[FakeQuestionGenerator alloc] initWithQuestion:expectedQuestion];

  FakeQuestionView *fakeQuestionView = [FakeQuestionView new];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-value"
  [[VerbinatorQuestionViewModel alloc] initWithQuestionView:fakeQuestionView
                                       andQuestionGenerator:questionGenerator];
#pragma clang diagnostic pop
  XCTAssertEqual(fakeQuestionView.setQuestionCalledWithQuestion,
                 expectedQuestion);
}

@end
