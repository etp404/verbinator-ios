//
//  VerbinatorQuestionView.h
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VerbinatorQuestion.h"

@protocol VerbinatorQuestionView <NSObject>

-(void)setQuestion:(NSString *)question;

@end
