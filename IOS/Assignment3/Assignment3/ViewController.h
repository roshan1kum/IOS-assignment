//
//  ViewController.h
//  Assignment3
//
//  Created by Roshan on 3/19/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>

@property(strong, nonatomic)NSMutableArray * arrimg;
@property(strong, nonatomic)NSMutableArray * arrlabel;

@end

