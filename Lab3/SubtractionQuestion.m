//
//  SubtractionQuestion.m
//  Lab3
//
//  Created by 桑染 on 2020-03-26.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    NSInteger num1 = [super leftValue];
    NSInteger num2 = [super rightValue];
    super.question = [NSString stringWithFormat:@"%ld - %ld ?", (long)num1, (long)num2];
    super.answer = num1 - num2;
}

@end
