//
//  MMShowMedia.h
//  MMShowMedia_Sample
//
//  Created by Juan Miguel Marques Morilla on 04/18/2016.
//  Copyright (c) 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMShowMediaViewProtocol.h"
#import "MMShowMediaPresenterProtocol.h"

@interface MMShowMediaViewController : UIViewController <MMShowMediaViewProtocol>

@property (nonatomic, strong) id <MMShowMediaPresenterProtocol> mediaPresenter;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
