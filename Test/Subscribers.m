//
//  Subscribers.m
//  Test
//
//  Created by Anna on 4/6/17.
//  Copyright © 2017 Anna. All rights reserved.
//

#import "Subscribers.h"


@interface Subscribers()

@property(nonatomic, strong) NSArray *subscribers;
//далее добавим изменяемый массив который будет хранить товары
@property(nonatomic, strong) NSMutableArray *items;
@end

@implementation Subscribers


//Объявляем метод для чтения данных из плист файла
-(void)readData

{
    //получим путь к этому файлу
    NSURL *fileURL = [[NSBundle mainBundle] URLForResource:@"Subscribers"withExtension:@"plist"];
    
    // далее мы может создать массив используя данные из плист файла
    self.subscribers = [NSArray arrayWithContentsOfURL:fileURL];
}

// объявим метод для отображения данных
-(void)textDescription
{
    // для начала проверим структуру данных в нашем массиве
    NSLog(@"Data array%@", self.subscribers);
    
    //далее напишем логику для получения текстовый представлений каждого товара
    NSMutableArray *textRepresentation = [NSMutableArray array];
    
    for (NSDictionary *item in self.subscribers)
    {
        NSString *name = [item objectForKey:@"Name"];
        NSString *lastname = [item objectForKey:@"Lastname"];
        NSString *typeOfConnection = [item objectForKey: @"TypeOfConnection"];
        NSDate *dateOfBirth = [item objectForKey:@"DateOfBirth"];
        
        NSString *result = [NSString stringWithFormat:@"Name - %@, lastname - %@, type of connection - %@, Date of birth - %@", name, lastname, typeOfConnection, dateOfBirth];
        [textRepresentation addObject:result];
    }
    
    //формируем результрующую строку
    NSString *resultString = [textRepresentation componentsJoinedByString:@"\n"];
   
}


@end
