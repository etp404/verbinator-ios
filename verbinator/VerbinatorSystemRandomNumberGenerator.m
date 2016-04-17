//
//  VerbinatorSystemRandomNumberGenerator.m
//  verbinator
//
//  Created by Matthew Mould on 17/04/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//
#include <stdlib.h>
#import "VerbinatorSystemRandomNumberGenerator.h"

@implementation VerbinatorSystemRandomNumberGenerator
-(int)randomNumberInclusiveFrom:(int)from exclusiveTo:(int)to {
    return from + arc4random_uniform(to-from);
}

@end
