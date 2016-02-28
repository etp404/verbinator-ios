//
//  VerbinatorQuestion.m
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "VerbinatorQuestion.h"
@interface VerbinatorQuestion()
@property NSString *questionString;
@end

@implementation VerbinatorQuestion
-(instancetype) initWithString:(NSString *)questionString{
    self = [super init];
    if (self) {
        self.questionString = questionString;
    }
    return self;
}
@end