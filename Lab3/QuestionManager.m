//
//  QuestionManager.m
//  Lab3
//
//  Created by 桑染 on 2020-03-26.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray new];
        _answerTimes = [NSMutableArray new];
    }
    return self;
}

- (NSString *)timeOutput {
    NSInteger totalTime = 0;
    for (int i = 0; i < [_questions count]; i++) {
        totalTime += [[_questions objectAtIndex:i] answerTime];
    }
    
    return [NSString stringWithFormat:@"total time: %.1lds, average time: %.1lu", (long)totalTime, totalTime / [_questions count]];
}

@end
