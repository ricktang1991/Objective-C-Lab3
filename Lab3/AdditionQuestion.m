//
//  AdditionQuestion.m
//  Lab3
//
//  Created by 桑染 on 2020-03-25.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion


- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger num1 = arc4random_uniform(100);
        NSInteger num2 = arc4random_uniform(100);
        NSString *result = [NSString stringWithFormat:@"%ld + %ld ?", (long)num1, (long)num2];
        NSInteger answer = num1 + num2;
        _question = result;
        _answer = answer;
    }
    return self;
}

@end
