//
//  VerbListProvider.h
//  verbinator
//
//  Created by Matthew Mould on 01/03/2016.
//  Copyright © 2016 Matthew Mould. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VerbListProvider : NSObject
-(instancetype)initWithFilePath:(NSString*)filePath;
-(NSArray *)verbs;
@end
