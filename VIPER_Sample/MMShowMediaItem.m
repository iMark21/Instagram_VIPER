//
//  MMShowMedia.m
//  MMShowMedia_Sample
//
//  Created by Juan Miguel Marques Morilla on 04/18/2016.
//  Copyright (c) 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import "MMShowMediaItem.h"

@implementation MMShowMediaItem

-(instancetype)initWithUsername:(NSString *)username urlImage:(NSString *)urlImage urlImageHD:(NSString *)urlImageHD numberLikes:(NSString *)numberLikes{
    
    
    if (self = [super init]) {
        _username = username;
        _urlImage = urlImage;
        _urlImageHD = urlImageHD;
        _numberLikes = numberLikes;
    }
    
    return self;
}


@end
