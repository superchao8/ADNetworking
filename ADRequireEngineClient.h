//
//  ADRequireEngineClient.h
//  ADNetworking
//
//  Created by aDu on 15/3/11.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"

@interface ADRequireEngineClient : AFHTTPRequestOperationManager

+ (instancetype)sharedClient;

@end
