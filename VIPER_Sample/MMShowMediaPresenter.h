//
//  MMShowMedia.h
//  MMShowMedia_Sample
//
//  Created by Juan Miguel Marques Morilla on 04/18/2016.
//  Copyright (c) 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MMShowMediaPresenterProtocol.h"
#import "MMShowMediaInteractorProtocol.h"
#import "MMShowMediaViewProtocol.h"
#import "MMLoginWireframeProtocol.h"

@class MMShowMediaWireFrame;

@interface MMShowMediaPresenter : NSObject <MMShowMediaPresenterProtocol>

@property (nonatomic, weak) id <MMShowMediaViewProtocol> mediaView;
@property (nonatomic, strong) id <MMShowMediaInteractorProtocol> mediaInteractor;
@property (nonatomic, strong) id <MMShowMediaWireFrameProtocol> mediaWireFrame;

@end
