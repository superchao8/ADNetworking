//
//  PostsItemViewModel.m
//  ADNetworking
//
//  Created by aDu on 15/3/12.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import "PostsItemViewModel.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

@implementation PostsItemViewModel

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"postID": @"id",
             @"text": @"text",
             @"postHtml": @"html",
             @"sourceVM": @"source",
             };
}

+ (NSValueTransformer *)postHtmlJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)sourceVMJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:SourceViewModel.class];
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError **)error
{
    self = [super initWithDictionary:dictionaryValue error:error];
    if (self == nil) return nil;
    
    return self;
}

@end
