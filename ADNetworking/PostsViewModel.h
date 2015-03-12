//
//  PostsViewModel.h
//  ADNetworking
//
//  Created by aDu on 15/3/11.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLModel.h"
#import "MTLJSONAdapter.h"

#import "ADPropertyEntity.h"
#import "PostsItemViewModel.h"

@interface PostsViewModel : MTLModel<MTLJSONSerializing>

@property (nonatomic, readonly) PostsItemViewModel *postsItemVM;

+ (ADPropertyEntity *)requireInfo;

@end
