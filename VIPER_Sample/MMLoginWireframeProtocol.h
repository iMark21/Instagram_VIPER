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

- (UINavigationController *)getUserInterface;

- (void)presentFormForDataLogin: (MMLogin*)loginData;

- (void)readyToPerformMediaModule:(NSString*)tokenModule;

@end
