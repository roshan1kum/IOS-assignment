//
//  ViewController.m
//  Assignment6
//
//  Created by Roshan on 3/22/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import "ViewController.h"
#import "AllEmployeeViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize btnMaleClick,btnFemaleClick;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[self Name]setDelegate:self];
    [[self Position]setDelegate:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


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
- (IBAction)Add:(id)sender {
   
//    NSLog(@"%@",person.Name);
    Person *person = [[Person alloc]init];
    [person setName:[[self Name]text]];
    [person setPosition:[[self Position]text]];
    [self writePersonObject:person];
    [self Add:nil];
    
    NSLog(@"add called");
    
}
- (IBAction)show:(id)sender {
//    AllEmployeeViewController *emp=[self.storyboard
//instantiateViewControllerWithIdentifier:@"employee_details"];
//    [self.navigationController pushViewController:emp animated:YES];
    Person *person = [[Person alloc]init];
    person=[self readPersonObjectWithKey:kNUSERDEFAULTSPERSON];
    self.Name.text=@"";
    NSLog(@"%@",person.Name);
    NSLog(@"%@",person.Position);
    
    NSLog(@"show called");
}

-(void)writePersonObject:(Person *)person
{
    NSData *personObject = [NSKeyedArchiver archivedDataWithRootObject:person];
    [[NSUserDefaults standardUserDefaults] setObject:personObject forKey:kNUSERDEFAULTSPERSON];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

-(Person *)readPersonObjectWithKey:(NSString *)key
{
    NSData *personObject = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    Person *person = [NSKeyedUnarchiver unarchiveObjectWithData:personObject];
    return person;
}

#pragma mark - UITextFieldDelegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}

@end
