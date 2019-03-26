//
//  ViewController.h
//  Assignment4
//
//  Created by Roshan on 3/19/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum{ Plus,Minus,Multiply,Divide} CalcOperation;
@interface ViewController : UIViewController{
    bool operatorPressed;
    char op;
    NSString *firstEntry;
    NSString *secondEntry;
    NSString *storage;
    CalcOperation operation;
}
@property (weak, nonatomic) IBOutlet UITextField *display;

@property (weak, nonatomic) IBOutlet UIButton *clear;
- (IBAction)clear:(id)sender;
- (IBAction)Button0:(id)sender;
- (IBAction)Button1:(id)sender;
- (IBAction)Button2:(id)sender;
- (IBAction)Button3:(id)sender;
- (IBAction)Button4:(id)sender;
- (IBAction)Buuton5:(id)sender;
- (IBAction)Button6:(id)sender;
- (IBAction)Button7:(id)sender;
- (IBAction)Button8:(id)sender;
- (IBAction)Button9:(id)sender;
- (IBAction)equalPressed:(id)sender;
- (IBAction)Add:(id)sender;
- (IBAction)Multiply:(id)sender;
- (IBAction)Subtract:(id)sender;
- (IBAction)Divide:(id)sender;
- (IBAction)dot:(id)sender;

@end

