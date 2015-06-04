//
//  BaseViewModel.m
//  ADNetworking
//
//  Created by aDu on 15/3/11.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import "BaseViewModel.h"

@implementation BaseViewModel
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"errCode": @"errCode",
             @"errMessage": @"errMessage",
             };
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError **)error
{
    self = [super initWithDictionary:dictionaryValue error:error];
    if (self != nil)
    {
     }
    return self;
}

- (BOOL)success
{
    return ([self.errCode integerValue] == 0);
}

- (BOOL)needLogin
{
    return ([self.errCode integerValue] == 1001);
}

@end
