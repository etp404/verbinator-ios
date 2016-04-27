//
//  VerbinatorQuestion.m
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "VerbinatorQuestion.h"
@interface VerbinatorQuestion ()
@property NSString *questionString;
@property(nonatomic, strong) VerbinatorInfinitiveVerb *verb;
@property(nonatomic, strong) id<VerbinatorPerson> person;
@property(nonatomic, strong) VerbinatorMoodAndTense *moodAndTense;
@end

@implementation VerbinatorQuestion
- (instancetype)initWithString:(NSString *)questionString {
  self = [super init];
  if (self) {
    self.questionString = questionString;
  }
  return self;
}

- (instancetype)initWithVerb:(VerbinatorInfinitiveVerb *)verb
                      person:(id<VerbinatorPerson>)person
                moodAndTense:(VerbinatorMoodAndTense *)moodAndTense {
  self = [super init];
  if (self) {
    _verb = verb;
    _person = person;
    _moodAndTense = moodAndTense;
  }
  return self;
}
@end