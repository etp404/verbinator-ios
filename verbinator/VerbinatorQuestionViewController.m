//
//  ViewController.m
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "VerbinatorQuestionViewController.h"
#import "VerbinatorQuestionViewModel.h"
#import "RandomNumberGenerator.h"
#import "VerbinatorSystemRandomNumberGenerator.h"
#import "VerbinatorRandomQuestionGenerator.h"
#import "VerbinatorInfinitiveVerb.h"

@interface VerbinatorQuestionViewController ()
@property(weak, nonatomic) IBOutlet UILabel *questionElement;
@end

@implementation VerbinatorQuestionViewController

- (void)viewDidLoad {
  [super viewDidLoad];
    NSObject<VerbinatorRandomNumberGenerator> *randomNumberGenerator = [VerbinatorSystemRandomNumberGenerator new];
    
    VerbinatorRandomQuestionGenerator *randomQuestionGenerator = [[VerbinatorRandomQuestionGenerator alloc] initWithRandomNumberGenerator:randomNumberGenerator verbList:nil personList:nil moodsAndTenses:nil];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)setQuestion:(VerbinatorQuestion *)question {
  [self.questionElement setText:question.questionString];
}

@end
