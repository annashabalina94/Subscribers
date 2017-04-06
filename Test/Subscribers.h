//
//  Subscribers.h
//  Test
//
//  Created by Anna on 4/6/17.
//  Copyright © 2017 Anna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Subscribers : NSObject
@property(strong, nonatomic) NSString* name;
@property(strong, nonatomic) NSString* lastname;
@property(strong, nonatomic) NSString* typeOfConnection;
@property(assign, nonatomic) NSDate* dateOfBirth;

-(void)readData;

-(void)textDescription;

@end
    
