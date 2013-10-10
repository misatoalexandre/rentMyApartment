//
//  User.m
//  apartmentshare
//
//  Created by Sidney Maestre on 5/30/13.
//  Copyright (c) 2013 App Design Vault. All rights reserved.
//

#import "User.h"


@implementation User

@dynamic username;

-(id)initIntoManagedObjectContext:(NSManagedObjectContext *)context {
    
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"User" inManagedObjectContext:context];
    
    self = [super initWithEntity:entity insertIntoManagedObjectContext:context];
    
    if(self) {
        
    }
    
    return self;
}

@end
