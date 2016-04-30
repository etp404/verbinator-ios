//
//  VerbinatorQuestionStore.h
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "VerbinatorQuestion.h"
#import <Foundation/Foundation.h>

@protocol VerbinatorQuestionGeneratorCallback
- (void)questionProvided:(VerbinatorQuestion *)question;
@end

@protocol VerbinatorQuestionGenerator <NSObject>
- (void)getQuestion:(id<VerbinatorQuestionGeneratorCallback>)callback;
@end
