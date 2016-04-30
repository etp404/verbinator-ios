//
//  ViewController.m
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "RandomNumberGenerator.h"
#import "VerbListParser.h"
#import "VerbinatorInfinitiveVerb.h"
#import "VerbinatorQuestionViewController.h"
#import "VerbinatorQuestionViewModel.h"
#import "VerbinatorRandomQuestionGenerator.h"
#import "VerbinatorSecondPersonSingular.h"
#import "VerbinatorSystemRandomNumberGenerator.h"
@interface VerbinatorQuestionViewController ()
@property(weak, nonatomic) IBOutlet UILabel *questionElement;
@end

@implementation VerbinatorQuestionViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  NSObject<VerbinatorRandomNumberGenerator> *randomNumberGenerator =
      [VerbinatorSystemRandomNumberGenerator new];

  VerbListParser *verbListProvider = [self createVerbListParser];
  NSMutableArray<VerbinatorPerson> *personList =
      [[NSMutableArray<VerbinatorPerson> alloc] init];
  [personList addObject:[[VerbinatorSecondPersonSingular alloc] init]];
  VerbinatorRandomQuestionGenerator *randomQuestionGenerator =
      [[VerbinatorRandomQuestionGenerator alloc]
          initWithRandomNumberGenerator:randomNumberGenerator
                               verbList:[verbListProvider verbs]
                             personList:[personList copy]
                         moodsAndTenses:nil];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)setQuestion:(NSString *)question {
  [self.questionElement setText:question];
}

- (VerbListParser *)createVerbListParser {
  NSBundle *bundle = [NSBundle bundleForClass:[self class]];
  NSString *verbFilePath = [NSString
      stringWithFormat:@"%@/%@", [bundle bundlePath], @"verb_list.csv"];

  return [[VerbListParser alloc] initWithFilePath:verbFilePath];
}

@end
