//
//  VerbinatorQuestionViewModel.m
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "VerbinatorQuestionPresenter.h"

NSString *const questionFormat =
    @"What is the '%@ %@' form of %@ (%@) in the %@?";

@interface VerbinatorQuestionPresenterQuestionCallback
    : NSObject <VerbinatorQuestionGeneratorCallback>
@property(nonatomic, strong) id<VerbinatorQuestionView> verbinatorQuestionView;
- (instancetype)initWithQuestionView:
    (id<VerbinatorQuestionView>)verbinatorQuestionView;
@end

@implementation VerbinatorQuestionPresenterQuestionCallback
- (instancetype)initWithQuestionView:
    (id<VerbinatorQuestionView>)verbinatorQuestionView {
  self = [super init];
  if (self) {
    self.verbinatorQuestionView = verbinatorQuestionView;
  }
  return self;
}
- (void)questionProvided:(VerbinatorQuestion *)question {
  NSString *questionString = [NSString
      stringWithFormat:@"What is the '%@ %@' form of %@ (%@) in the %@?",
                       question.moodAndTense.mood, question.moodAndTense.tense,
                       question.verb.frenchVerb, question.verb.englishVerb,
                       [question.person getFrenchForm]];
  [self.verbinatorQuestionView setQuestion:questionString];
}
@end

@implementation VerbinatorQuestionPresenter
- (instancetype)
initWithQuestionView:(id<VerbinatorQuestionView>)verbinatorQuestionView
andQuestionGenerator:
    (id<VerbinatorQuestionGenerator>)verbinatorQuestionGenerator {
  self = [super init];
  if (self) {
    [verbinatorQuestionGenerator
        getQuestion:[[VerbinatorQuestionPresenterQuestionCallback alloc]
                        initWithQuestionView:verbinatorQuestionView]];
  }
  return self;
}

@end
