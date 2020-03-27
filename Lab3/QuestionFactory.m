//
//  QuestionFactory.m
//  Lab3
//
//  Created by 桑染 on 2020-03-27.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion",
        @"SubtractionQuestion",@"DivisionQuestion",@"MultiplicationQuestion"];
    }
    return self;
}

- (Question *)generateRandomQuestion {
    NSString *className = _questionSubclassNames[arc4random_uniform(4)];
    return [[NSClassFromString(className)
    alloc]init];
}

@end
