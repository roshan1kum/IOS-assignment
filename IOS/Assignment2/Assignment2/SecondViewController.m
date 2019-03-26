//
//  SecondViewController.m
//  Assignment2
//
//  Created by Roshan on 3/23/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize btnFemaleClick,btnMaleClick;

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

- (IBAction)btnMaleClick:(id)sender {
    
    btnMaleClick.selected = !btnMaleClick.isSelected;
    
    if (btnMaleClick.isSelected)
    {
        btnFemaleClick.selected = NO;
    }
    else{
        btnMaleClick.selected = YES;
    }
}
- (IBAction)btnFemaleClick:(id)sender {
    btnFemaleClick.selected = !btnFemaleClick.isSelected;
    
    if (btnFemaleClick.isSelected)
    {
        btnMaleClick.selected = NO;
    }
    else{
        btnFemaleClick.selected = YES;
    }

}

- (IBAction)signup:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
