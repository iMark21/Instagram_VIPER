//
//  MMLoginPresenter.m
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 15/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import "MMLoginPresenter.h"
#import "MMLoginViewModel.h"
#import "MMLogin.h"

@implementation MMLoginPresenter

-(void)viewWillDisplayed{
    
    MMLogin *loginData =  [self viewModelsForDataModels:[self.loginInteractor createOauthInstagram]];
    
    [self.loginWireframe presentFormForDataLogin:loginData];
}

-(void)loggedInForToken:(NSString*)token{
    
    // Hand off to the next module
    [self.loginWireframe readyToPerformMediaModule:token];
}


#pragma mark - View Model Generation

// Generate the view models from the data models. Avoid having mutable data models
// in the view controller. Also separates concerns nicely
- (MMLogin *)viewModelsForDataModels:(NSDictionary *)dataDictionary {
    
    NSString *clientId = [dataDictionary objectForKey:@"clientId"];
    NSString *clientSecret = [dataDictionary objectForKey:@"clientSecret"];
    NSString *callbackURL = [dataDictionary objectForKey:@"callbackUrl"];
    
    
   return [[MMLogin alloc]initWithClientID:clientId clientSecret:clientSecret callBackURL:callbackURL];
    
  
}



@end
