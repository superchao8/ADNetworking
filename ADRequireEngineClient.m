//
//  ADRequireEngineClient.m
//  ADNetworking
//
//  Created by aDu on 15/3/11.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import "ADRequireEngineClient.h"

@implementation ADRequireEngineClient

static NSString * const XYDevAPIBaseURLString = @"https://api.app.net/";

+ (instancetype)sharedClient {
    static ADRequireEngineClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[ADRequireEngineClient alloc] initWithBaseURL:[NSURL URLWithString:XYDevAPIBaseURLString]];
        _sharedClient.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        
//        [_sharedClient.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        
//        [_sharedClient.requestSerializer setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
        
        //        _sharedClient.requestSerializer = [AFgzipRequestSerializer serializerWithSerializer:[AFJSONRequestSerializer serializer]];
        
//        _sharedClient.responseSerializer = [AFgzipResponseSerializer serializerWithSerializer:[AFHTTPResponseSerializer serializer]];
        
        //        [_sharedClient.requestSerializer registerHTTPOperationClass:[AFJSONRequestOperation class]];
        
        //        _sharedClient.responseSerializer.acceptableContentTypes = [_sharedClient.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
        
    });
    
    return _sharedClient;
}

@end
