//
//  MMShowMedia.h
//  MMShowMedia_Sample
//
//  Created by Juan Miguel Marques Morilla on 04/18/2016.
//  Copyright (c) 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MMShowMediaItem : NSObject


@property (nonatomic, strong, readonly) NSString *urlImage;
@property (nonatomic, strong, readonly) NSString *username;
@property (nonatomic, strong, readonly) NSString *numberLikes;
@property (nonatomic, strong, readonly) NSString *urlImageHD;

- (instancetype)initWithUsername:(NSString *)username
                        urlImage:(NSString *)urlImage
                      urlImageHD:(NSString *)urlImageHD
                     numberLikes:(NSString *)numberLikes;


@end
