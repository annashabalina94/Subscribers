//
//  DataViewController.m
//  Test
//
//  Created by Anna on 4/6/17.
//  Copyright © 2017 Anna. All rights reserved.
//

#import "DataViewController.h"

@interface DataViewController ()
@property (strong, nonatomic) IBOutlet UIView *View;


@property(nonatomic, strong) NSArray *subscribers;

@end

@implementation DataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSURL *fileURL = [[NSBundle mainBundle] URLForResource:@"Subscribers"withExtension:@"plist"];
    
    self.subscribers = [NSArray arrayWithContentsOfURL:fileURL];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger count = [self.subscribers count];
    return count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *c;
    c=[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    UILabel *label;
    NSInteger index = [indexPath row];
    NSArray *person = self.subscribers[index];
    c.textLabel.text=person[0];
    label = (UILabel *)[c.contentView viewWithTag:1001];
    label.text = person[1];
    
    return c;
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
