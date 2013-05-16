//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Jesus Morales on 5/10/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

//convenience constructor
+ (id)randomItem;

//Designated initializer
- (id) initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber;

@property (nonatomic, readwrite, strong) BNRItem *containedItem;
@property (nonatomic, readwrite, weak) BNRItem *container;
@property (nonatomic, readwrite, copy) NSString *itemName;
@property (nonatomic, readwrite, copy) NSString *serialNumber;
@property (nonatomic, readwrite, assign) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

@end
