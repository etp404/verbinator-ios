//
//  InfinitiveVerb.h
//  verbinator
//
//  Created by Matthew Mould on 11/04/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VerbinatorInfinitiveVerb : NSObject
@property (nonatomic, strong, readonly) NSString *frenchVerb;
@property (nonatomic, strong, readonly) NSString *englishVerb;
@property (nonatomic, strong, readonly) NSString *auxiliaryVerb;

- (instancetype)initWithFrenchVerb:(NSString*)frenchVerb englishVerb:(NSString*)englishVerb auxiliaryVerb:(NSString*)auxiliaryVerb;
@end
