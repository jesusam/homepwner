//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Jesus Morales on 5/10/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

@synthesize itemName;
@synthesize containedItem;
@synthesize serialNumber;
@synthesize valueInDollars;
@synthesize container;
@synthesize dateCreated;

-(NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", itemName,
                                                                                                          serialNumber,
                                                                                                          valueInDollars,
                                                                                                          dateCreated];
    
    return descriptionString;
}

-(id) initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber
{
    //calling the superclass's designated initializer
    self = [super init];
    
    //assign values to the instance variables BUT only if the pointer that was returned is valid
    if (self)
    {
        [self setItemName:name];
        [self setSerialNumber:sNumber];
        [self setValueInDollars:value];
        dateCreated = [[NSDate alloc] init];
    }
    
    //Return the address of the newly initialized object
    return self;
}

-(id)init
{
    return [self initWithItemName:@"Item"
                   valueInDollars:0
                     serialNumber:@""];
}

+(id)randomItem
{
    //Create an array of three adjectives
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",
                                                             @"Rusty",
                                                             @"Shiny",
                                                             nil];
    //Create an array of three nouns
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",
                                                        @"Spork",
                                                        @"Mac",
                                                        nil];
    //Get index o a random adjective/noun from the lists
    //Note: the modulo operator gives you the remainder
    //So adjective Index is a random number from [0,2] inc
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNounList count];
    
    //Note that NSInteger is not an object, but a type definition
    //for "unsignes long"
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c", '0' + rand() % 10,
                                                                             'A' + rand() % 26,
                                                                             '0' + rand() % 10,
                                                                             'A' + rand() % 26,
                                                                             '0' + rand() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serialNumber:randomSerialNumber];
    
    return newItem;
}
@end
