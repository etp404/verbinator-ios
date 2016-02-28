//
//  VerbinatorQuestion.h
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VerbinatorQuestion : NSObject
@property (readonly) NSString *questionString;
-(instancetype) initWithString:(NSString *)questionAsString;
@end
