//
//  PostsItemViewModel.h
//  ADNetworking
//
//  Created by aDu on 15/3/12.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLModel.h"
#import "MTLJSONAdapter.h"

@interface PostsItemViewModel : MTLModel<MTLJSONSerializing>

@property (nonatomic, assign) NSNumber *postID;
@property (nonatomic, strong) NSString *text;

@end
