//
//  RandomQuestionGenerator.h
//  verbinator
//
//  Created by Matthew Mould on 16/04/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "RandomNumberGenerator.h"
#import "VerbinatorQuestion.h"
#import <Foundation/Foundation.h>
#import "VerbinatorQuestionGenerator.h"

@interface VerbinatorRandomQuestionGenerator : NSObject<VerbinatorQuestionGenerator>
- (instancetype)initWithRandomNumberGenerator:
                    (NSObject<VerbinatorRandomNumberGenerator> *)randomNumberGenerator
                                     verbList:(NSArray<VerbinatorInfinitiveVerb *> *)verbList
                                   personList:(NSArray<NSString *> *)personList
                               moodsAndTenses:
                                   (NSArray<VerbinatorMoodAndTense *> *)moodAndTenseList;
-(void)getQuestion:(id<VerbinatorQuestionGeneratorCallback>) callback;
@end
