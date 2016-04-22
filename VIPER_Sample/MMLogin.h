//
//  MMLogin.h
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 15/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MMLogin : NSObject

@property (nonatomic, strong, readonly) NSString *clientID;
@property (nonatomic, strong, readonly) NSString *clientSecret;
@property (nonatomic, strong, readonly) NSString *callBackURL;

- (instancetype)initWithClientID:(NSString *)clientID
                        clientSecret:(NSString *)clientSecret
                     callBackURL:(NSString *)callBackURL;


@end
