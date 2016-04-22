//
//  MMShowMediaInteractorProtocol.h
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 19/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MMShowMediaInteractorProtocol <NSObject>

-(void)requestDataFrom:(NSURL *)url completionBlock:(void (^)(NSArray *results, NSError *error))block;

@end
