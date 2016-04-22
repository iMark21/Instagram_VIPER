//
//  MMLoginPresenterProtocol.h
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 15/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MMLoginPresenterProtocol <NSObject>

-(void)viewWillDisplayed;

-(void)loggedInForToken:(NSString*)token;



@end
