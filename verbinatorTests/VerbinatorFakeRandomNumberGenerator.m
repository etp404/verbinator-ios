//
//  VerbinatorFakeQuestionGenerator.m
//  verbinator
//
//  Created by Matthew Mould on 16/04/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "VerbinatorFakeRandomNumberGenerator.h"
@interface VerbinatorFakeRandomNumberGenerator()
@property (nonatomic, assign) int number;
@end

@implementation VerbinatorFakeRandomNumberGenerator

- (instancetype)initWithNumber:(int)number
{
    self = [super init];
    if (self) {
        _number = number;
    }
    return self;
}

-(int)randomNumberFrom:(int)from to:(int)to{
    return self.number;
}
@end
