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
#import "VerbinatorQuestionPresenter.h"
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

  NSMutableArray<VerbinatorMoodAndTense *> *moodAndTenseList =
      [[NSMutableArray<VerbinatorMoodAndTense *> alloc] init];
  [moodAndTenseList
      addObject:[[VerbinatorMoodAndTense alloc] initWithMood:@"indicative"
                                                    andTense:@"present"]];

  id<VerbinatorQuestionGenerator> randomQuestionGenerator =
      [[VerbinatorRandomQuestionGenerator alloc]
          initWithRandomNumberGenerator:randomNumberGenerator
                               verbList:[verbListProvider verbs]
                             personList:[personList copy]
                         moodsAndTenses:moodAndTenseList];

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-value"
  [[VerbinatorQuestionPresenter alloc]
      initWithQuestionView:self
      andQuestionGenerator:randomQuestionGenerator];
#pragma clang diagnostic pop
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
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
