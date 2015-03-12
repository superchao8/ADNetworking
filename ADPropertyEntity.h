//
//  ADPropertyEntity.h
//  ADNetworking
//
//  Created by aDu on 15/3/11.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, HTTPRequestType) {
    HTTPRequestTypeWithGET = 0,
    HTTPRequestTypeWithPOST
};

@class responesOBJ;

@interface ADPropertyEntity : NSObject

@property (nonatomic, assign) HTTPRequestType requireType;
@property (nonatomic, copy) NSString *reqURL;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, strong) NSDictionary *pro;
@property (nonatomic, assign) Class responesOBJ;

- (NSDictionary *)encodePro;

@end
