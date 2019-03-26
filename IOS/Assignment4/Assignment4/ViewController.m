//
//  ViewController.m
//  Assignment4
//
//  Created by Roshan on 3/19/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize display;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    operatorPressed=false;
    firstEntry=NULL;
    secondEntry=NULL;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clear:(id)sender {
    display.text = @"";
    
}

- (IBAction)Button0:(id)sender {
    display.text=[NSString stringWithFormat:@"%@0",display.text];
}

- (IBAction)Button1:(id)sender {
    display.text=[NSString stringWithFormat:@"%@1",display.text];
}

- (IBAction)Button2:(id)sender {
    display.text=[NSString stringWithFormat:@"%@2",display.text];
}

- (IBAction)Button3:(id)sender {
    display.text=[NSString stringWithFormat:@"%@3",display.text];
}

- (IBAction)Button4:(id)sender {
    if(display.text)
    display.text=[NSString stringWithFormat:@"%@4",display.text];
}

- (IBAction)Buuton5:(id)sender {
    display.text=[NSString stringWithFormat:@"%@5",display.text];
}

- (IBAction)Button6:(id)sender {
    display.text=[NSString stringWithFormat:@"%@6",display.text];
}

- (IBAction)Button7:(id)sender {
    display.text=[NSString stringWithFormat:@"%@7",display.text];
}

- (IBAction)Button8:(id)sender {
    display.text=[NSString stringWithFormat:@"%@8",display.text];
}

- (IBAction)Button9:(id)sender {
    display.text=[NSString stringWithFormat:@"%@9",display.text];
}
- (IBAction)equalPressed:(id)sender {
    NSExpression *expression=[NSExpression expressionWithFormat:display.text];
    NSNumber *result=[expression expressionValueWithObject:nil context:nil];
    NSString *res=[result stringValue];
    display.text=res;
}


//- (IBAction)equalPressed:(id)sender {
//    NSString *val = display.text;
//    switch(operation) {
//        case Plus :
//            display.text= [NSString stringWithFormat:@"%0.4f",[val floatValue]+[storage floatValue]];
//            break;
//        case Minus:
//            display.text= [NSString stringWithFormat:@"%0.4f",[storage floatValue]-[val floatValue]];
//            break;
//        case Divide:
//            display.text= [NSString stringWithFormat:@"%0.4f",[storage floatValue]/[val floatValue]];
//            break;
//        case Multiply:
//            display.text= [NSString stringWithFormat:@"%0.4f",[val floatValue]*[storage floatValue]];
//            break;
//    }
//}

- (IBAction)Add:(id)sender{
    display.text=[NSString stringWithFormat:@"%@+",display.text];
}
//
//- (IBAction)Add:(id)sender {
//    operation = Plus;
//    storage = display.text;
//    display.text=@"";
//    //DisplayLabel.text=NULL;

//}

- (IBAction)Multiply:(id)sender {
    display.text=[NSString stringWithFormat:@"%@*",display.text];
}

- (IBAction)Subtract:(id)sender {
   display.text=[NSString stringWithFormat:@"%@-",display.text];
}

- (IBAction)Divide:(id)sender {
   display.text=[NSString stringWithFormat:@"%@/",display.text];
}

- (IBAction)dot:(id)sender {
    display.text=[NSString stringWithFormat:@"%@.",display.text];
}
@end
