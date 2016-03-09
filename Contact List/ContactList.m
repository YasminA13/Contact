//
//  ContactList.m
//  Contact List
//
//  Created by Yasmin Ahmad on 2016-03-09.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(instancetype)init
{
    self = [super init];
    if (self)
    {
        self.contacts = [[NSMutableArray alloc] init];
    }
    
    return self;
}

@end
