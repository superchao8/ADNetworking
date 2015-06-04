//
//  BaseViewModel.h
//  ADNetworking
//
//  Created by aDu on 15/3/11.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import "MTLModel.h"
#import "MTLJSONAdapter.h"

@interface BaseViewModel : MTLModel<MTLJSONSerializing>

@property (nonatomic, readonly) NSNumber *errCode;
@property (nonatomic, readonly) NSString *errMessage;

- (BOOL)success;

- (BOOL)needLogin;

@end
