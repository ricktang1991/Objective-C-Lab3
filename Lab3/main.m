//
//  main.m
//  Lab3
//
//  Created by 桑染 on 2020-03-25.
//  Copyright © 2020 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int rightCount = 0;
        int wrongCount = 0;
        BOOL gameOn = YES;
        while (gameOn) {
            AdditionQuestion *a = [AdditionQuestion new];
            NSString *strInput = [InputHandler getUserInputWithMaxLength:255 withPrompt:[a question]];
            if ([strInput isEqualToString:@"quit\n"]) {
                gameOn = NO;
            }
            else if ([strInput intValue] == [a answer]) {
                NSLog(@"Right!");
                rightCount += 1;
                NSLog(@"%@", [ScoreKeeper getScoreWithRightCount:rightCount WrongCount:wrongCount]);
            }
            else if ([strInput intValue] != [a answer]) {
                NSLog(@"Wrong!");
                wrongCount += 1;
                NSLog(@"%@", [ScoreKeeper getScoreWithRightCount:rightCount WrongCount:wrongCount]);
            }
        }
    }
}
