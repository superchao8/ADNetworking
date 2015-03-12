//
//  ADRequireEngine.h
//  ADNetworking
//
//  Created by aDu on 15/3/11.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ADRequireEngineClient.h"
#import "ADPropertyEntity.h"

@class PropertyEntity;

typedef void (^CompletionBlock) (id ViewModel);
typedef void (^FailedBlock) (NSError *error);


@interface ADRequireEngine : NSObject

+ (AFHTTPRequestOperation *)requireWithProperty:(ADPropertyEntity *)proper completionBlock:(CompletionBlock)completionBlock failedBlock:(FailedBlock)failedBlock;

@end
