//
//  VerbListProvider.m
//  verbinator
//
//  Created by Matthew Mould on 01/03/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "VerbListParser.h"
#import "VerbinatorInfinitiveVerb.h"
@interface VerbListParser ()
@property(nonatomic, strong) NSString *filePath;
@end

@implementation VerbListParser
- (instancetype)initWithFilePath:(NSString *)filePath {
  self = [super init];
  if (self) {
    _filePath = filePath;
  }
  return self;
}

- (NSArray *)verbs {
  NSString *fileContents =
      [NSString stringWithContentsOfFile:self.filePath
                                encoding:NSUTF8StringEncoding
                                   error:nil];
  NSMutableArray *verblist = [NSMutableArray new];
  for (NSString *line in [fileContents
           componentsSeparatedByCharactersInSet:[NSCharacterSet
                                                    newlineCharacterSet]]) {
    NSArray *items = [line componentsSeparatedByString:@","];
    [verblist addObject:[[VerbinatorInfinitiveVerb alloc]
                            initWithFrenchVerb:items[0]
                                   englishVerb:items[1]
                                 auxiliaryVerb:items[2]]];
  }
  return [verblist copy];
}

@end
