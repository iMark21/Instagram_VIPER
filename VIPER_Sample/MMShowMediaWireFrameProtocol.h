//
//  MMShowMediaWireFrameProtocol.h
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 19/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol MMShowMediaWireFrameProtocol <NSObject>

- (void)presentResultsForToken:(NSString *)token inNavigationController:(UINavigationController *)navigationController;

- (UINavigationController *)getUserInterface;

@end
