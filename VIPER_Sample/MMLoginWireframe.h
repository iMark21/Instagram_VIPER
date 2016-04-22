//
//  MMLoginWireframe.h
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 15/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MMLoginPresenter.h"
#import "MMShowMediaPresenter.h"
#import "MMLoginWireframeProtocol.h"

@interface MMLoginWireframe : NSObject<MMLoginWireframeProtocol,MMShowMediaPresenterProtocol,MMShowMediaWireFrameProtocol>

@property (nonatomic, strong) MMLoginPresenter *presenter;
//@property (nonatomic, strong) id <MMShowMediaPresenterProtocol> mediaPresenter;





@end
