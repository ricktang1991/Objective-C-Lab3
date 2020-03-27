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
#import "QuestionManager.h"
#import "QuestionFactory.h"
#import "Question.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int rightCount = 0;
        int wrongCount = 0;
        BOOL gameOn = YES;
        QuestionManager *questionManager = [QuestionManager new];
        ScoreKeeper *scorKeeper = [ScoreKeeper new];
        InputHandler *inputHandler = [InputHandler new];
        QuestionFactory *questionFactory = [QuestionFactory new];
        
        while (gameOn) {
            Question *question1 = [questionFactory generateRandomQuestion];
            [question1 generateQuestion];
            [[questionManager questions] addObject:question1];
            NSString *strInput = [inputHandler getUserInputWithMaxLength:255 withPrompt:[question1 question]];
            if ([strInput isEqualToString:@"quit\n"]) {
                gameOn = NO;
            }
            else if ([strInput integerValue] == [question1 answer]) {
                NSLog(@"Right!");
                rightCount += 1;
                NSLog(@"%@", [scorKeeper getScoreWithRightCount:rightCount WrongCount:wrongCount]);
                NSLog(@"%@s", [questionManager timeOutput]);
            }
            else if ([strInput integerValue] != [question1 answer]) {
                NSLog(@"Wrong!");
                wrongCount += 1;
                NSLog(@"%@", [scorKeeper getScoreWithRightCount:rightCount WrongCount:wrongCount]);
                NSLog(@"%@s", [questionManager timeOutput]);
            }
        }
    }
    return 0;
}
