//
//  ViewController.m
//  Assignment5
//
//  Created by Roshan on 3/21/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize CountryName,CurrencyCode,PhoneCode,CountryCode,ImageArray;


- (void)viewDidLoad {
    [super viewDidLoad];
     NSDictionary *dict = [self JSONFromFile];
    //NSLog(@"%@",dict);
    CountryName = [NSMutableArray array];
    PhoneCode = [NSMutableArray array];
    CountryCode = [NSMutableArray array];
    CurrencyCode = [NSMutableArray array];
    ImageArray = [NSMutableArray array];
    for (NSDictionary *dictionary in dict) {
        NSString *name = [dictionary objectForKey:@"name"];
        NSString *phone = [dictionary objectForKey:@"phoneCode"];
        NSString *ccode=[dictionary objectForKey:@"countryCode"];
        NSString *currency = [dictionary objectForKey:@"currencyCode"];
        NSString *strEncoded=[dictionary objectForKey:@"media"];
        UIImage *image = [self decodeBase64ToImage:strEncoded];
        //NSLog(@"Country name: %@", name);
        [CountryName addObject:name];
        [PhoneCode addObject:phone];
        [CountryCode addObject:ccode];
        [CurrencyCode addObject:currency];
        [ImageArray addObject:image];
        
    }
    
}

-(UIImage *)decodeBase64ToImage:(NSString *)strEncodeData{
    NSData *data = [[NSData alloc]initWithBase64EncodedString:strEncodeData options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return [UIImage imageWithData:data];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return CountryName.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (TableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell=[tableView 	dequeueReusableCellWithIdentifier:@"cell"];
    if(cell==nil)
    {
        cell=[[TableViewCell alloc]initWithStyle:
              UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
 
    cell.CountryName.text=[CountryName objectAtIndex:indexPath.row];
    cell.PhoneCode.text=[PhoneCode objectAtIndex:indexPath.row];
    cell.CountryCode.text=[CountryCode objectAtIndex:indexPath.row];
    cell.CurrencyCode.text=[CurrencyCode objectAtIndex:indexPath.row];
    cell.ImageCountry.image=[ImageArray objectAtIndex:indexPath.row];
    return cell;
}


- (NSDictionary *)JSONFromFile
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"countrylist" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
