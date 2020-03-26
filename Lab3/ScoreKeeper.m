//
//  ScoreKeeper.m
//  Lab3
//
//  Created by 桑染 on 2020-03-26.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

+ (NSString *) getScoreWithRightCount:(int) rightCount WrongCount:(int) wrongCount {
    int percentage = rightCount * 100 / (rightCount + wrongCount);
    NSString *result = [NSString stringWithFormat:@"score: %d right, %d wrong ---- %d%%", rightCount, wrongCount, percentage];
    return result;
}

@end
