//
//  MMModuleManager.h
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 22/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MMLoginWireframeProtocol.h"
#import "MMShowMediaWireFrameProtocol.h"

@interface MMModuleManager : NSObject

@property (nonatomic, strong) id<MMLoginWireframeProtocol> loginModule;
@property (nonatomic, strong) id<MMShowMediaWireFrameProtocol> mediaModule;

+(instancetype)sharedInstance;

-(void)setupModules;

@end
