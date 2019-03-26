//
//  ViewController.m
//  FirstApplication
//
//  Created by Roshan on 3/13/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textf,labelView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showbtn:(id)sender {
    NSLog(@"button is clicked");
    NSString *input=textf.text;
    labelView.text=input;
    textf.text=@"";
    
}
@end
