//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Jesus Morales on 5/16/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject
{
    NSMutableArray *allItems;
}

+(BNRItemStore *)sharedStore;

-(NSArray *)allItems;
-(BNRItem *)createItem;
-(void)removeItem:(BNRItem *)p;
-(void)moveItemAtIndex:(int)from
               toIndex:(int)to;

@end
