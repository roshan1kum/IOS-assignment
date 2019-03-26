//
//  ViewController.m
//  Assignment2
//
//  Created by Roshan on 3/15/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)secondView:(id)sender {
    
    SecondViewController *sec = [self.storyboard
            instantiateViewControllerWithIdentifier:@"sec"];
    [self.navigationController pushViewController:sec animated:YES];
    
}
@end

