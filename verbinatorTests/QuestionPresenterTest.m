//
//  QuestionViewModelTest.m
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "FakeQuestionGenerator.h"
#import "FakeQuestionView.h"
#import "VerbinatorInfinitiveVerb.h"
#import "VerbinatorPerson.h"
#import "VerbinatorQuestionPresenter.h"
#import "VerbinatorSecondPersonSingular.h"
#import <XCTest/XCTest.h>

@interface QuestionPresenterTest : XCTestCase

@end

@implementation QuestionPresenterTest

- (void)testViewIsImmediatelyToldToShowAQuestion {
  VerbinatorInfinitiveVerb *someVerb =
      [[VerbinatorInfinitiveVerb alloc] initWithFrenchVerb:@"french_verb"
                                               englishVerb:@"english_verb"
                                             auxiliaryVerb:@"some_auxiliary"];
  VerbinatorSecondPersonSingular *somePerson =
      [[VerbinatorSecondPersonSingular alloc] init];
  VerbinatorMoodAndTense *someMoodAndTest =
      [[VerbinatorMoodAndTense alloc] initWithMood:@"some_mood"
                                          andTense:@"some_tense"];

  VerbinatorQuestion *expectedQuestion =
      [[VerbinatorQuestion alloc] initWithVerb:someVerb
                                        person:somePerson
                                  moodAndTense:someMoodAndTest];
  FakeQuestionGenerator *questionGenerator =
      [[FakeQuestionGenerator alloc] initWithQuestion:expectedQuestion];

  FakeQuestionView *fakeQuestionView = [FakeQuestionView new];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-value"
  [[VerbinatorQuestionPresenter alloc] initWithQuestionView:fakeQuestionView
                                       andQuestionGenerator:questionGenerator];
#pragma clang diagnostic pop

  NSString *expectedQuestionString = [NSString
      stringWithFormat:@"What is the '%@ %@' form of %@ (%@) in the %@?",
                       someMoodAndTest.mood, someMoodAndTest.tense,
                       someVerb.frenchVerb, someVerb.englishVerb,
                       [somePerson getFrenchForm]];
  XCTAssertEqualObjects(fakeQuestionView.setQuestionCalledWithQuestion,
                        expectedQuestionString);
}

@end
