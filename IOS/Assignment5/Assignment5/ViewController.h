//
//  ViewController.h
//  Assignment5
//
//  Created by Roshan on 3/21/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate	>
@property(strong,nonatomic)NSMutableArray *CountryName;
@property(strong,nonatomic)NSMutableArray *CountryCode;
@property(strong,nonatomic)NSMutableArray *CurrencyCode;
@property(strong,nonatomic)NSMutableArray *PhoneCode;
@property(strong,nonatomic)NSMutableArray *ImageArray;
@property (weak, nonatomic) IBOutlet UITableView *table;

@end

