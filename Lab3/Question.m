//
//  AdditionQuestion.m
//  Lab3
//
//  Created by 桑染 on 2020-03-25.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "Question.h"

@implementation Question


- (instancetype)init
{
    self = [super init];
    if (self) {
        _startTime = [NSDate date];
        _leftValue = arc4random_uniform(90) + 10;
        _rightValue = arc4random_uniform(90) + 10;
//        _question = [NSString stringWithFormat:@"%ld + %ld ?", (long)_leftValue, (long)_rightValue];
//        _answer = _leftValue + _rightValue;
    }
    return self;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime {
    return [_endTime timeIntervalSinceDate:_startTime];
}

- (void)generateQuestion {
    
}

@end
