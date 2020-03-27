//
//  QuestionFactory.h
//  Lab3
//
//  Created by 桑染 on 2020-03-27.
//  Copyright © 2020 Rick. All rights reserved.
//

#import "Question.h"

@interface QuestionFactory : Question

@property NSArray *questionSubclassNames;

- (instancetype)init;
- (Question *)generateRandomQuestion;

@end

