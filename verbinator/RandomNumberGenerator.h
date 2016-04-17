//
//  RandomNumberGenerator.h
//  verbinator
//
//  Created by Matthew Mould on 16/04/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VerbinatorRandomNumberGenerator
- (int)randomNumberInclusiveFrom:(int)from exclusiveTo:(int)to;
@end
