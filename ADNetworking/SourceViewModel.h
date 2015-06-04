//
//  SourceViewModel.h
//  ADNetworking
//
//  Created by aDU on 15/6/3.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLModel.h"
#import "MTLJSONAdapter.h"

@interface SourceViewModel : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy) NSString *clientId;
@property (nonatomic, strong) NSURL *sourceLink;
@property (nonatomic, copy) NSString *sourceName;

@end
