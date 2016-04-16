//
//  VerbinatorMoodAndTense.h
//  verbinator
//
//  Created by Matthew Mould on 16/04/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VerbinatorMoodAndTense : NSObject
@property (strong, nonatomic,readonly) NSString *mood;
@property (strong, nonatomic,readonly) NSString *tense;
- (instancetype)initWithMood:(NSString *)mood andTense:(NSString *)tense;
@end