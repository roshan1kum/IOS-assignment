//
//  Person.m
//  Assignment6
//
//  Created by Roshan on 3/25/19.
//  Copyright © 2019 Roshan. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if(self!=nil){
        self.Name = [aDecoder decodeObjectForKey:@"Name"];
        self.Position = [aDecoder decodeObjectForKey:@"Position"];
//        self.Gender=[aDecoder decodeObjectForKey:@"Gender"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:[self Name] forKey:@"Name"];
    [aCoder encodeObject:[self Position] forKey:@"Position"];
//    [aCoder encodeObject:[self Gender] forKey:@"Gender"];
}
@end
