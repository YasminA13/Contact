//
//  InputCollector.m
//  Contact List
//
//  Created by Yasmin Ahmad on 2016-03-08.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString
{
    char input[100];
    
    NSLog(@"====>>>>> %@", promptString);

    fgets(input, 100, stdin);

    
    NSString *result = [NSString stringWithUTF8String:input];
    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    result = [result stringByTrimmingCharactersInSet:characterSet];
 
    return result;
          
 
}
-(NSMutableDictionary *)takeInput{
    
    NSMutableDictionary *inputDictionary = [[NSMutableDictionary alloc] init];
    
    char input[100];
    
    fgets(input, 100, stdin);
    
    NSString *userInput = [NSString stringWithCString:input encoding:NSASCIIStringEncoding];
    
    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    userInput = [userInput stringByTrimmingCharactersInSet:characterSet];
    
    
    
    [inputDictionary setObject:userInput forKey:@"Contact found"];
    
    return inputDictionary;
}

@end

