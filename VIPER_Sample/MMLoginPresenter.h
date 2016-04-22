//
//  MMLoginPresenter.h
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 15/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MMLoginPresenterProtocol.h"
#import "MMLoginInteractorProtocol.h"
#import "MMLoginViewProtocol.h"
#import "MMLoginWireframeProtocol.h"

@interface MMLoginPresenter : NSObject<MMLoginPresenterProtocol>

@property (nonatomic, strong) id<MMLoginInteractorProtocol> loginInteractor;
@property (nonatomic, strong) id<MMLoginViewProtocol> userInterface;
@property (nonatomic, weak) id<MMLoginWireframeProtocol> loginWireframe;


@end
