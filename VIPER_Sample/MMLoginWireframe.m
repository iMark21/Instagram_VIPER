//
//  MMLoginWireframe.m
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 15/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import "MMLoginWireframe.h"
#import "MMLoginPresenter.h"
#import "MMLoginWireframeProtocol.h"
#import "MMLoginViewController.h"
#import "MMLoginInteractor.h"
#import "MMShowMediaPresenter.h"
#import "MMShowMediaWireFrame.h"
#import "MMModuleManager.h"
#import <InstagramSimpleOAuth/InstagramSimpleOAuth.h>

@interface MMLoginWireframe()

@property (nonatomic, strong) UINavigationController *rootNavigationController;
@property (nonatomic, strong) id<MMLoginWireframeProtocol> loginWireframe;
@property (nonatomic, strong) MMLoginViewController *viewController;
@property (nonatomic, strong) id<MMShowMediaWireFrameProtocol> mediaModule;


@end

@implementation MMLoginWireframe

- (instancetype)init {
    
    if (self = [super init]) {
        
        [self setupModule];
    }
    
    return self;
}

#pragma mark - Module Setup

// This where we inject all dependencies for the search input module.

- (void)setupModule {
    
    // Inject the dependencies into the presenter
    self.presenter = [[MMLoginPresenter alloc] init];
    self.presenter.loginWireframe = self;
    self.presenter.userInterface = self.viewController;
    self.presenter.loginInteractor = [[MMLoginInteractor alloc] init];
}


#pragma mark - MMLoginProtocol

-(void)presentFormForDataLogin:(MMLogin *)loginData{
    
        InstagramSimpleOAuthViewController
        *instagramController = [[InstagramSimpleOAuthViewController alloc] initWithClientID:loginData.clientID
                                                                               clientSecret:loginData.clientSecret
                                                                                callbackURL:[NSURL URLWithString:loginData.callBackURL]
                                                                                 completion:^(InstagramLoginResponse *response, NSError *error) {
                                                                                     NSLog(@"My Access Token is: %@", response.accessToken);

                                                                                     if (response.accessToken) {
                                                                                         
                                                                                         [self readyToPerformMediaModule:response.accessToken];

                                                                                     }
                                                                                     
                                                                                 }];
    
   
    
    
    [[[[[UIApplication sharedApplication] delegate] window] rootViewController] presentViewController:instagramController animated:YES completion:^{
        
        
    }];
    

}

-(MMLoginPresenter*)getPresenter{
    
    return self.presenter;
    
}

-(void)readyToPerformMediaModule:(NSString*)tokenModule{
    
    self.mediaModule = [[MMModuleManager sharedInstance]mediaModule];
    
    [self.mediaModule presentResultsForToken:tokenModule inNavigationController:[self.mediaModule getUserInterface]];
        
}

#pragma mark - STSSearchInputModuleInterface

- (UINavigationController *)getUserInterface {
    
    return self.rootNavigationController;
}

#pragma mark - Lazy Loaded Properties

- (UINavigationController *)rootNavigationController {
    
    if (_rootNavigationController == nil) {
        
         UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
         bundle: nil];
        
         _rootNavigationController = (UINavigationController*)[mainStoryboard
         instantiateViewControllerWithIdentifier: @"loginNav"];

    }
    
    return _rootNavigationController;
}


- (MMLoginViewController *)viewController {
    
    if (_viewController == nil) {

        _viewController = [[UIStoryboard storyboardWithName:@"Main"
                                                     bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"loginBoard"];
    }
    
    return _viewController;
}


@end
