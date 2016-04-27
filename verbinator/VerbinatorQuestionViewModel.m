//
//  VerbinatorQuestionViewModel.m
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "VerbinatorQuestionViewModel.h"

NSString *const questionFormat =
    @"What is the '%@ %@' form of %@ (%@) in the %@?";

@implementation VerbinatorQuestionViewModel
- (instancetype)
initWithQuestionView:(id<VerbinatorQuestionView>)verbinatorQuestionView
andQuestionGenerator:
    (id<VerbinatorQuestionGenerator>)verbinatorQuestionGenerator {
  self = [super init];
  if (self) {
    VerbinatorQuestion *question = [verbinatorQuestionGenerator getQuestion];
    NSString *questionString = [NSString
        stringWithFormat:@"What is the '%@ %@' form of %@ (%@) in the %@?",
                         question.moodAndTense.mood,
                         question.moodAndTense.tense, question.verb.frenchVerb,
                         question.verb.englishVerb, question.person];

    [verbinatorQuestionView setQuestion:questionString];
  }
  return self;
}

@end
