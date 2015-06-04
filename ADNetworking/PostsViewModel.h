//
//  PostsViewModel.h
//  ADNetworking
//
//  Created by aDu on 15/3/11.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseViewModel.h"

#import "ADPropertyEntity.h"
#import "PostsItemViewModel.h"

@interface PostsViewModel : BaseViewModel

@property (nonatomic, readonly) PostsItemViewModel *postsItemVM;

+ (ADPropertyEntity *)requireInfo;

@end
