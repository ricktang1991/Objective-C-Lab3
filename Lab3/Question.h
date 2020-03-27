//
//  AdditionQuestion.h
//  Lab3
//
//  Created by 桑染 on 2020-03-25.
//  Copyright © 2020 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSString *question;
@property NSInteger *answer;
@property NSDate *startTime;
@property NSDate *endTime;
@property NSInteger leftValue;
@property NSInteger rightValue;

- (instancetype)init;
- (NSTimeInterval)answerTime;
- (void)generateQuestion;

@end


