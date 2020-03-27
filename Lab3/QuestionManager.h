//
//  QuestionManager.h
//  Lab3
//
//  Created by 桑染 on 2020-03-26.
//  Copyright © 2020 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface QuestionManager : NSObject

@property NSMutableArray *questions;
@property NSMutableArray *answerTimes;
- (NSString *)timeOutput;

@end

