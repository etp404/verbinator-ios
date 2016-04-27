//
//  QuestionGeneratorTest.m
//  verbinator
//
//  Created by Matthew Mould on 16/04/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "CapturingVerbinatorQuestionGeneratorCallback.h"
#import "VerbinatorFakeRandomNumberGenerator.h"
#import "VerbinatorInfinitiveVerb.h"
#import "VerbinatorMoodAndTense.h"
#import "VerbinatorQuestion.h"
#import "VerbinatorSecondPersonSingular.h"
#import <XCTest/XCTest.h>

@interface QuestionGeneratorTest : XCTestCase

@end

@implementation QuestionGeneratorTest

- (void)testThatNewQuestionIsGeneratedFromAvailableCombinations {
  VerbinatorInfinitiveVerb *someVerb =
      [[VerbinatorInfinitiveVerb alloc] initWithFrenchVerb:@"someFrenchVerb"
                                               englishVerb:@"someEnglishVerb"
                                             auxiliaryVerb:@"someAuxiliary"];
  id<VerbinatorPerson> somePerson = [VerbinatorSecondPersonSingular new];
  VerbinatorMoodAndTense *moodAndTense =
      [[VerbinatorMoodAndTense alloc] initWithMood:@"someMood"
                                          andTense:@"someTense"];

  VerbinatorQuestion *expectedQuestion =
      [[VerbinatorQuestion alloc] initWithVerb:someVerb
                                        person:somePerson
                                  moodAndTense:moodAndTense];

  CapturingVerbinatorQuestionGeneratorCallback *callback =
      [CapturingVerbinatorQuestionGeneratorCallback new];
  NSObject<VerbinatorRandomNumberGenerator> *fakeRandomNumberGenerator =
      [[VerbinatorFakeRandomNumberGenerator alloc] initWithNumber:0];

  NSArray<VerbinatorInfinitiveVerb *> *verbList = @[ someVerb ];
  NSArray<NSString *> *personList = @[ somePerson ];
  NSArray<VerbinatorMoodAndTense *> *moodAndTenses = @[ moodAndTense ];

  VerbinatorRandomQuestionGenerator *questionGenerator =
      [[VerbinatorRandomQuestionGenerator alloc]
          initWithRandomNumberGenerator:fakeRandomNumberGenerator
                               verbList:verbList
                             personList:personList
                         moodsAndTenses:moodAndTenses];

  [questionGenerator getQuestion:callback];

  XCTAssertEqualObjects(callback.question.person, expectedQuestion.person);
  XCTAssertEqualObjects(callback.question.moodAndTense,
                        expectedQuestion.moodAndTense);
  XCTAssertEqualObjects(callback.question.verb, expectedQuestion.verb);
}

@end
