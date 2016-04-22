//
//  MMShowMediaPresenterProtocol.h
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 19/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MMShowMediaViewProtocol.h" 
#import "MMShowMediaInteractor.h"
#import "MMShowMediaWireFrameProtocol.h"

@protocol MMShowMediaPresenterProtocol <NSObject>

-(void)loginOKWithToken: (NSString*)instagramToken;

-(NSString*)urlRequest:(NSString*)instagramToken;

@end
