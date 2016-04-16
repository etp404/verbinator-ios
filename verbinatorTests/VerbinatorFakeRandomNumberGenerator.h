//
//  VerbinatorFakeQuestionGenerator.h
//  verbinator
//
//  Created by Matthew Mould on 16/04/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VerbinatorRandomQuestionGenerator.h"

@interface VerbinatorFakeRandomNumberGenerator : NSObject<VerbinatorRandomNumberGenerator>
- (instancetype)initWithNumber:(int)number;

@end
