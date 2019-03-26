//
//  SecondViewController.h
//  Assignment2
//
//  Created by Roshan on 3/23/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import "ViewController.h"

@interface SecondViewController : ViewController
@property (weak, nonatomic) IBOutlet UIButton *btnMaleClick;

- (IBAction)btnMaleClick:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnFemaleClick;
- (IBAction)btnFemaleClick:(id)sender;

- (IBAction)signup:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *signup;

@end
