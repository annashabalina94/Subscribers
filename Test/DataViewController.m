//
//  DataViewController.m
//  Test
//
//  Created by Anna on 4/6/17.
//  Copyright © 2017 Anna. All rights reserved.
//

#import "DataViewController.h"

@interface DataViewController ()

@property(nonatomic, strong) NSArray *subscribers;

@end

@implementation DataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//Объявляем метод для чтения данных из плист файла
-(void)readData

{
    //получим путь к этому файлу
    NSURL *fileURL = [[NSBundle mainBundle] URLForResource:@"Subscribers"withExtension:@"plist"];
    
    // далее мы может создать массив используя данные из плист файла
    self.subscribers = [NSArray arrayWithContentsOfURL:fileURL];
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
