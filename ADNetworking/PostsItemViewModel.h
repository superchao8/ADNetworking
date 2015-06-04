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
#import "SourceViewModel.h"

@interface PostsItemViewModel : MTLModel<MTLJSONSerializing>

@property (nonatomic, strong) NSNumber *postID;
@property (nonatomic, copy) NSString *text;

@property (nonatomic, strong) NSURL *postHtml;
@property (nonatomic, strong) SourceViewModel *sourceVM;

@end
