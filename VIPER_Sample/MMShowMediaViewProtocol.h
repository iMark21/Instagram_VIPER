//
//  MMShowMediaViewProtocol.h
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 19/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MMShowMediaPresenterProtocol.h"

@protocol MMShowMediaViewProtocol <NSObject>

- (void)presentMediaResults:(NSArray *)results;

- (void)showLoading:(BOOL)show;

@end
