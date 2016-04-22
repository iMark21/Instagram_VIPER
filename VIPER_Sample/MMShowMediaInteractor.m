//
//  MMShowMedia.m
//  MMShowMedia_Sample
//
//  Created by Juan Miguel Marques Morilla on 04/18/2016.
//  Copyright (c) 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import "MMShowMediaInteractor.h"

@implementation MMShowMediaInteractor

-(void)requestDataFrom:(NSURL *)url completionBlock:(void (^)(NSArray *results, NSError *error))block{
    
    
    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:url
            completionHandler:^(NSData *data,
                                NSURLResponse *response,
                                NSError *error) {
                
                
                NSArray *results = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                
                
                if(results) {
                    block(results, nil);
                    
                } else {
                    NSError *error = [NSError errorWithDomain:@"plist_download_error" code:1
                                                     userInfo:[NSDictionary dictionaryWithObject:@"Can't fetch data" forKey:NSLocalizedDescriptionKey]];
                    block(nil, error);
                }                
            
    }] resume];
    
    

}

@end