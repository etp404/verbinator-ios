//
//  VerbListProvider.m
//  verbinator
//
//  Created by Matthew Mould on 01/03/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "VerbListParser.h"
@interface VerbListParser()
@property (nonatomic, strong) NSString* filePath;
@end

@implementation VerbListParser
-(instancetype)initWithFilePath:(NSString*)filePath
{
    self = [super init];
    if (self) {
        _filePath = filePath;
    }
    return self;
}

-(NSArray *)verbs {
    NSString* fileContents =
    [NSString stringWithContentsOfFile:self.filePath
                              encoding:NSUTF8StringEncoding error:nil];
    return [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
}

@end
