//
//  MMLoginProtocol.h
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 15/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIViewController;
@class UINavigationController;
@class MMLogin;
@class MMLoginPresenter;

@protocol MMLoginWireframeProtocol <NSObject>

- (MMLoginPresenter*)getPresenter;

/**
 *  Get the root navigation controller for the module
 *
 *  @return The root navigation controller
 */
- (UINavigationController *)getUserInterface;

- (void)presentFormForDataLogin: (MMLogin*)loginData;

- (void)readyToPerformInstagramOAuth: (MMLogin*)data;

- (void)readyToPerformMediaModule:(NSString*)tokenModule;

@end
