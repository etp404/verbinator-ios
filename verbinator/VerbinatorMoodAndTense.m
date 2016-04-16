//
//  VerbinatorMoodAndTense.m
//  verbinator
//
//  Created by Matthew Mould on 16/04/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "VerbinatorMoodAndTense.h"

@interface VerbinatorMoodAndTense ()
@property(strong, nonatomic) NSString *mood;
@property(strong, nonatomic) NSString *tense;
@end

@implementation VerbinatorMoodAndTense

- (instancetype)initWithMood:(NSString *)mood andTense:(NSString *)tense
{
  self = [super init];
  if (self) {
    _mood = mood;
    _tense = tense;
  }
  return self;
}
@end
