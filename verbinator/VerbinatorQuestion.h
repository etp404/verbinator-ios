//
//  VerbinatorQuestion.h
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "VerbinatorInfinitiveVerb.h"
#import "VerbinatorMoodAndTense.h"
#import <Foundation/Foundation.h>

@interface VerbinatorQuestion : NSObject
@property(readonly) NSString *questionString;
@property(nonatomic, strong, readonly) VerbinatorInfinitiveVerb *verb;
@property(nonatomic, strong, readonly) NSString *person;
@property(nonatomic, strong, readonly) VerbinatorMoodAndTense *moodAndTense;

- (instancetype)initWithString:(NSString *)questionAsString;
- (instancetype)initWithVerb:(VerbinatorInfinitiveVerb *)verb
                      person:(NSString *)person
                moodAndTense:(VerbinatorMoodAndTense *)moodAndTense;
@end
