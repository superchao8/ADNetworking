//
//  ADRequireEngine.m
//  ADNetworking
//
//  Created by aDu on 15/3/11.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import "ADRequireEngine.h"
#import "MTLJSONAdapter.h"

@implementation ADRequireEngine

+ (AFHTTPRequestOperation *)requireWithProperty:(ADPropertyEntity *)proper completionBlock:(CompletionBlock)completionBlock failedBlock:(FailedBlock)failedBlock{
    if (proper.requireType == HTTPRequestTypeWithGET) {
        return [[ADRequireEngineClient sharedClient] GET:[proper reqURL]
                                        parameters:[proper encodePro]
                                           success:^(AFHTTPRequestOperation * __unused task, id json) {
                                               
                                               NSLog(@"%@", json);
                                               
                                               if(json){
                                                   NSError *error = nil;
                                                   id tweet = [MTLJSONAdapter modelOfClass:[proper.responesOBJ class] fromJSONDictionary:json error:&error];
                                                   //                                                   NSDictionary *JSONDictionary = [MTLJSONAdapter JSONDictionaryFromModel:user];
                                                   
                                                   if (completionBlock) {
                                                       completionBlock(tweet);
                                                   }
                                                   
                                               }
                                               
                                           }
                                           failure:^(AFHTTPRequestOperation *__unused task, NSError *error) {
                                               NSLog(@"%@", error.description);
                                               
                                               if (failedBlock) {
                                                   failedBlock(error);
                                               }
                                           }];
    } else if(proper.requireType == HTTPRequestTypeWithPOST){
        return [[ADRequireEngineClient sharedClient] POST:[proper reqURL]
                                         parameters:[proper encodePro]
                                            success:^(AFHTTPRequestOperation * __unused task, id JSON) {
                                                
                                                NSLog(@"%@", JSON);
                                                
                                                NSError *error = nil;
                                                id tweet = [MTLJSONAdapter modelOfClass:[proper.responesOBJ class] fromJSONDictionary:JSON error:&error];
                                                
                                                if (completionBlock) {
                                                    completionBlock(tweet);
                                                }
                                                
                                            }
                                            failure:^(AFHTTPRequestOperation *__unused task, NSError *error) {
                                                NSLog(@"%@", error.description);
                                                
                                                if (failedBlock) {
                                                    failedBlock(error);
                                                }
                                            }];
    } else {
        NSAssert(proper.requireType == HTTPRequestTypeWithGET || proper.requireType == HTTPRequestTypeWithPOST, @"you must set requireType to GET or POST, or write something");
        return nil;
    }
    
}

@end
