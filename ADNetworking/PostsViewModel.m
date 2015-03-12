//
//  PostsViewModel.m
//  ADNetworking
//
//  Created by aDu on 15/3/11.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import "PostsViewModel.h"
#import "Mantle.h"

@implementation PostsViewModel

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"postsItemVM": @"data",
             };
}

+ (NSValueTransformer *)postsItemVMJSONTransformer {
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:PostsItemViewModel.class];
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError **)error
{
    self = [super initWithDictionary:dictionaryValue error:error];
    if (self == nil) return nil;
    
    return self;
}

+ (ADPropertyEntity *)requireInfo{
    ADPropertyEntity *pro = [[ADPropertyEntity alloc] init];
    pro.requireType = HTTPRequestTypeWithGET;
    pro.reqURL = @"stream/0/posts/stream/global";
    pro.url = @"";
    pro.responesOBJ = self.class;
    pro.pro = @{
                };
    
    return pro;
}

@end
