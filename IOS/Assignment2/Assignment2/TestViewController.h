//
//  TestViewController.h
//  Assignment2
//
//  Created by Roshan on 3/19/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *btnMale;
@property (weak, nonatomic) IBOutlet UIButton *btnFemale;

- (IBAction)btnMaleAction:(id)sender;
- (IBAction)btnFemaleAction:(id)sender;


@end
