//
//  InfinitiveVerb.m
//  verbinator
//
//  Created by Matthew Mould on 11/04/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "VerbinatorInfinitiveVerb.h"

@interface VerbinatorInfinitiveVerb ()
@property(nonatomic, strong) NSString *frenchVerb;
@property(nonatomic, strong) NSString *englishVerb;
@property(nonatomic, strong) NSString *auxiliaryVerb;
@end

@implementation VerbinatorInfinitiveVerb
- (instancetype)initWithFrenchVerb:(NSString *)frenchVerb
                       englishVerb:(NSString *)englishVerb
                     auxiliaryVerb:(NSString *)auxiliaryVerb;
{
  self = [super init];
  if (self) {
    self.frenchVerb = frenchVerb;
    self.englishVerb = englishVerb;
    self.auxiliaryVerb = auxiliaryVerb;
  }
  return self;
}
@end
