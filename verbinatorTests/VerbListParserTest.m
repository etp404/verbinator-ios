//
//  VerbListParserTest.m
//  verbinator
//
//  Created by Matthew Mould on 01/03/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "VerbListParser.h"

@interface VerbListParserTest : XCTestCase

@end

@implementation VerbListParserTest

- (void)testExample {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];

    NSString *verbFilePath =
    [NSString stringWithFormat:@"%@/%@", [bundle bundlePath], @"test_verb_list.csv"];
    VerbListParser *verbListProvider = [[VerbListParser alloc] initWithFilePath:verbFilePath];
    NSArray *verbs = [verbListProvider verbs];
    XCTAssertEqual(2, [verbs count]);
    
}


@end
