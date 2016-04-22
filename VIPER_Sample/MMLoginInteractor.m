//
//  MMLoginInteractor.m
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 15/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import "MMLoginInteractor.h"

NSString * const kClientID = @"d89c44cbd9b84916a86cf2d09312fd21";
NSString * const kClientSecret = @"31f7bf393d4a45c5aeb5c2bf0aa6f96e";
NSString * const kCallbackURL = @"https://instagram.com/";

@implementation MMLoginInteractor

-(NSDictionary*)createOauthInstagram{
    
    NSDictionary *OAuth_Dict = @{@"clientId":kClientID,
                                 @"clientSecret":kClientSecret,
                                 @"callbackUrl":kCallbackURL};
    
    return OAuth_Dict;
}

@end
