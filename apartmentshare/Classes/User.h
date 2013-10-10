//
//  User.h
//  apartmentshare
//
//  Created by Sidney Maestre on 5/30/13.
//  Copyright (c) 2013 App Design Vault. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "StackMob.h"

@interface User : SMUserManagedObject

@property (nonatomic, retain) NSString * username;

- (id)initIntoManagedObjectContext:(NSManagedObjectContext *) context;

@end
