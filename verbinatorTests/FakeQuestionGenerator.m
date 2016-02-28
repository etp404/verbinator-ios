//
//  FakeQuestionGenerator.m
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "FakeQuestionGenerator.h"
@interface FakeQuestionGenerator()
@property (nonatomic, strong) VerbinatorQuestion* question;
@end

@implementation FakeQuestionGenerator
- (instancetype)initWithQuestion:(VerbinatorQuestion *)question
{
    self = [super init];
    if (self) {
        self.question=question;
    }
    return self;
}

-(VerbinatorQuestion *)getQuestion{
    return self.question;
}
@end
