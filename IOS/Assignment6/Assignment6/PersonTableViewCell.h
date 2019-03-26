//
//  PersonTableViewCell.h
//  Assignment6
//
//  Created by Roshan on 3/25/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UITextField *NameText;
@property (weak, nonatomic) IBOutlet UITextField *PositionText;
@property (weak, nonatomic) IBOutlet UITextField *GenderText;


@end
