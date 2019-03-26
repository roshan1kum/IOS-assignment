//
//  TableViewCell.h
//  Assignment5
//
//  Created by Roshan on 3/22/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *CountryName;
@property (weak, nonatomic) IBOutlet UILabel *PhoneCode;

@property (weak, nonatomic) IBOutlet UILabel *CountryCode;
@property (weak, nonatomic) IBOutlet UILabel *CurrencyCode;
@property (weak, nonatomic) IBOutlet UIImageView *ImageCountry;

@end
