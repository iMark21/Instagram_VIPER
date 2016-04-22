//
//  MMLogin.m
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 15/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import "MMLogin.h"

@implementation MMLogin

-(instancetype)initWithClientID:(NSString *)clientID clientSecret:(NSString *)clientSecret callBackURL:(NSString *)callBackURL{
    
    
    if (self = [super init]) {
        
        _clientID = clientID;
        _clientSecret = clientSecret;
        _callBackURL = callBackURL;
      
    }
    
    return self;
    
    
}


@end
