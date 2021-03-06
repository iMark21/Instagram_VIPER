//
//  MMShowMedia.h
//  MMShowMedia_Sample
//
//  Created by Juan Miguel Marques Morilla on 04/18/2016.
//  Copyright (c) 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MMShowMediaViewController.h"
#import "MMShowMediaWireFrameProtocol.h"
#import "MMShowMediaPresenter.h"
#import <UIKit/UIKit.h>

@interface MMShowMediaWireFrame : NSObject <MMShowMediaWireFrameProtocol>

@property (nonatomic, strong) MMShowMediaPresenter *mediaPresenter;

@end
