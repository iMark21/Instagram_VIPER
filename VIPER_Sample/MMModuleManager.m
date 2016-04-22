//
//  MMModuleManager.m
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 22/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import "MMModuleManager.h"
#import "MMLoginWireframe.h"
#import "MMShowMediaWireFrame.h"

@implementation MMModuleManager

+(instancetype)sharedInstance{
    
    static dispatch_once_t once;
    static id sharedInstance;
    
    dispatch_once(&once, ^{
        sharedInstance = [self new];
    });
    
    return sharedInstance;
    
}


-(void)setupModules{
    
    self.loginModule = [[MMLoginWireframe alloc] init];
    
    self.mediaModule = [[MMShowMediaWireFrame alloc] init];
}


@end
