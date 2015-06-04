//
//  SourceViewModel.m
//  ADNetworking
//
//  Created by aDU on 15/6/3.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import "SourceViewModel.h"

@implementation SourceViewModel

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"clientId": @"client_id",
             @"sourceLink": @"link",
             @"sourceName": @"name",
             };
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError **)error {
    self = [super initWithDictionary:dictionaryValue error:error];
    if (self == nil) return nil;
    
    // Store a value that needs to be determined locally upon initialization.
    //    _retrievedAt = [NSDate date];
    
    return self;
}

@end
