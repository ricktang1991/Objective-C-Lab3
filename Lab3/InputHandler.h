//
//  InputHandler.h
//  Lab3
//
//  Created by 桑染 on 2020-03-26.
//  Copyright © 2020 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

- (NSString *) getUserInputWithMaxLength:(int) maxLength withPrompt:(NSString *) prompt;

@end


