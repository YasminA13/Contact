//
//  main.m
//  Contact List
//
//  Created by Yasmin Ahmad on 2016-03-08.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"


int main(int argc, const char * argv[])


{
    ContactList *allContacts = [[ContactList alloc] init];
    
    Contact *entry1 = [[Contact alloc] init];
    entry1.name = @"Yasmin";
    entry1.email = @"acb@gmail.com";
    entry1.number = @"1234567";
    
    [allContacts.contacts addObject:entry1];
    
    Contact *entry2 = [[Contact alloc] init];
    entry2.name = @"Bob";
    entry2.email = @"def@gmail.com";
    entry2.number = @"1098765";
    
    [allContacts.contacts addObject:entry2];
    
    Contact *entry3 = [[Contact alloc] init];
    entry3.name = @"Jane";
    entry3.email = @"ghi@gmail.com";
    entry3.number = @"1112131";
    
    [allContacts.contacts addObject:entry3];
    
    InputCollector *collector =[[InputCollector alloc] init];
    NSString *prompt = @"Please enter the full name of your new contact\n";
    NSString *menu = [collector inputForPrompt:@"Menu Options:\n" @"1) Find Contact\n" @"2) Add Contact\n" @"3) Exit\n"];
    
    
    
    
    if ([menu isEqualToString: @"1"])
    {
        NSLog(@"Please enter the name of the contact you are looking for");
        NSDictionary *menuChoice = [collector takeInput];
        NSLog(@"You are entering the name of %@", menuChoice);
    }
    else if([menu isEqualToString: @"2"])
    {
        NSLog(@"Enter the name of your new contact");
        NSDictionary *menuChoice = [collector takeInput];
        NSLog(@"You are entering the name of %@", menuChoice);
    }
    else if([menu isEqualToString: @"3"])
    {
        NSLog(@"Adieu!");

    }
        
}



//
//
//
//        NSString *result = [collector inputForPrompt:prompt];
//
//
//        NSLog(@"%@", result);
//
//
//        if ([result isEqualToString:@"quit"]) {
//            break;
//        }
//
//    }
//}
//)