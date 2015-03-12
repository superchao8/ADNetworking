//
//  ViewController.m
//  ADNetworking
//
//  Created by aDu on 15/3/11.
//  Copyright (c) 2015年 super. All rights reserved.
//

#import "ViewController.h"
#import "PostsViewModel.h"
#import "ADRequireEngine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [ADRequireEngine requireWithProperty:[PostsViewModel requireInfo] completionBlock:^(id ViewModel) {
        NSLog(@"%@", ViewModel);
    } failedBlock:^(NSError *error) {
        NSLog(@"%@", error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
