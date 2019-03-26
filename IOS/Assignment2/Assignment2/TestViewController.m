//
//  TestViewController.m
//  Assignment2
//
//  Created by Roshan on 3/19/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)btnMaleAction:(id)sender {
    self.btnMale.selected = !self.btnMale.isSelected;
    
    if (self.btnMale.isSelected)
    {
        self.btnFemale.selected = NO;
    }
    else{
        self.btnMale.selected = YES;
    }
}

- (IBAction)btnFemaleAction:(id)sender {
    
    self.btnFemale.selected = !self.btnFemale.isSelected;
    
    if (self.btnFemale.isSelected)
    {
        self.btnMale.selected = NO;
    }
    else{
        self.btnFemale.selected = YES;
    }
    
}
@end
