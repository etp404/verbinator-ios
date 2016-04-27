//
//  RandomQuestionGenerator.m
//  verbinator
//
//  Created by Matthew Mould on 16/04/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "VerbinatorMoodAndTense.h"
#import "VerbinatorRandomQuestionGenerator.h"
@interface VerbinatorRandomQuestionGenerator ()
@property(nonatomic, strong)
    NSObject<VerbinatorRandomNumberGenerator> *randomNumberGenerator;
@property(nonatomic, strong) NSArray<VerbinatorInfinitiveVerb *> *verbList;
@property(nonatomic, strong) NSArray<id<VerbinatorPerson>> *personList;
@property(nonatomic, strong)
    NSArray<VerbinatorMoodAndTense *> *moodAndTenseList;
@end

@implementation VerbinatorRandomQuestionGenerator
- (instancetype)
initWithRandomNumberGenerator:
    (NSObject<VerbinatorRandomNumberGenerator> *)randomNumberGenerator
                     verbList:(NSArray<VerbinatorInfinitiveVerb *> *)verbList
                   personList:(NSArray<id<VerbinatorPerson>> *)personList
               moodsAndTenses:
                   (NSArray<VerbinatorMoodAndTense *> *)moodAndTenseList {
  {
    self = [super init];
    if (self) {
      _randomNumberGenerator = randomNumberGenerator;
      _verbList = verbList;
      _personList = personList;
      _moodAndTenseList = moodAndTenseList;
    }
    return self;
  }
}

- (void)getQuestion:(id<VerbinatorQuestionGeneratorCallback>)callback {
  VerbinatorQuestion *question =
      [[VerbinatorQuestion alloc] initWithVerb:self.verbList[0]
                                        person:self.personList[0]
                                  moodAndTense:_moodAndTenseList[0]];
  [callback questionProvided:question];
}

@end
