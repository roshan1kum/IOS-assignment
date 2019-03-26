//
//  AllEmployeeViewController.m
//  Assignment6
//
//  Created by Roshan on 3/23/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import "AllEmployeeViewController.h"
#import "PersonTableViewCell.h"

@interface AllEmployeeViewController ()

@end

@implementation AllEmployeeViewController
//@synthesize NameText;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    PersonTableViewCell *person=[[PersonTableViewCell alloc]init];
    
        NSString *Name = [[NSUserDefaults standardUserDefaults] stringForKey:@"Name"];
    person.NameText.text=Name;
    person.PositionText.text=@"gv";
    person.GenderText.text=@"";
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)BackButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
