//
//  ViewController.h
//  Assignment6
//
//  Created by Roshan on 3/22/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kNUSERDEFAULTSPERSON @"nuserdefaultsperson"

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIButton *btnMaleClick;
- (IBAction)btnMaleClick:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnFemaleClick;
- (IBAction)btnFemaleClick:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *EmployeeId;
@property (weak, nonatomic) IBOutlet UITextField *Name;
@property (weak, nonatomic) IBOutlet UITextField *Position;
@property (weak, nonatomic) IBOutlet UITextField *Address;
@property (weak, nonatomic) IBOutlet UIButton *Add;
- (IBAction)Add:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *show;
- (IBAction)show:(id)sender;
@property(strong,nonatomic)NSMutableArray *PersonArray;

@end

