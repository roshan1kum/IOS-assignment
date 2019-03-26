//
//  ViewController.m
//  Assignment3
//
//  Created by Roshan on 3/19/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     _arrimg=[[NSMutableArray alloc]initWithObjects:@"Naruto.jpg",@"Naruto2.jpg",@"Naruto3.jpg",@"Naruto4.jpg",@"Naruto4.jpg",@"kurama.jpg"
              ,@"Kakashi.jpg",@"kurama2.jpg",@"Naruto5.jpg",@"sasuke.jpg",@"fourth.jpg",@"Naruto.jpg",@"Naruto.jpg",@"Naruto2.jpg",@"Naruto3.jpg",@"Naruto4.jpg",@"Naruto4.jpg",@"kurama.jpg"
              ,@"Kakashi.jpg",@"kurama2.jpg",@"Naruto5.jpg",@"sasuke.jpg",@"fourth.jpg",@"Naruto.jpg",nil];
    
    self.arrlabel=[[NSMutableArray alloc]initWithObjects:@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1",@"Text1", nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _arrimg.count;
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    
    CollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.ImageView.image = [UIImage imageNamed:[_arrimg objectAtIndex:indexPath.row]];
    cell.TitleLabel.text= [self.arrlabel objectAtIndex:indexPath.row];
    
    return cell;
    
    
//    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    	
//    UIImageView *image1=(UIImageView *)[cell viewWithTag:1];
//    image1.image=[UIImage imageNamed:[_arrimg objectAtIndex:indexPath.row]];
//
//
//    cell.layer.borderColor = [UIColor blackColor].CGColor;
//    cell.layer.borderWidth = 1.0;
//
//
//    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
