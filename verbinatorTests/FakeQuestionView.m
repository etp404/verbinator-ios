//
//  FakeQuestionView.m
//  verbinator
//
//  Created by Matthew Mould on 28/02/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import "FakeQuestionView.h"

@implementation FakeQuestionView
-(void)setQuestion:(NSString *)question {
    self.setQuestionCalledWithQuestion = question;
}
@end
