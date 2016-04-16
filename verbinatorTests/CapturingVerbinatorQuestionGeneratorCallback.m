//
//  CapturingVerbinatorQuestionGeneratorCallback.m
//  verbinator
//
//  Created by Matthew Mould on 16/04/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "CapturingVerbinatorQuestionGeneratorCallback.h"

@implementation CapturingVerbinatorQuestionGeneratorCallback
-(void)questionProvided:(VerbinatorQuestion *)question{
    self.question=question;
}
@end
