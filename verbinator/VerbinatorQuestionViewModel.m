//
//  VerbinatorQuestionViewModel.m
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "VerbinatorQuestionViewModel.h"

@implementation VerbinatorQuestionViewModel
-(instancetype) initWithQuestionView:(id<VerbinatorQuestionView>)verbinatorQuestionView andQuestionGenerator:(id<VerbinatorQuestionGenerator>)verbinatorQuestionGenerator
{
    self = [super init];
    if (self) {
        [verbinatorQuestionView setQuestion:[verbinatorQuestionGenerator getQuestion]];
    }
    return self;
}

@end
