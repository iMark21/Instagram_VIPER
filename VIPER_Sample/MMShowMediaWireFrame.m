//
//  MMShowMedia.m
//  MMShowMedia_Sample
//
//  Created by Juan Miguel Marques Morilla on 04/18/2016.
//  Copyright (c) 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import "MMShowMediaWireFrame.h"
#import "MMShowMediaViewController.h"
#import "MMShowMediaInteractor.h"

@interface MMShowMediaWireFrame ()

@property (nonatomic, strong) UINavigationController *rootNavigationController;
@property (nonatomic, strong) id<MMShowMediaWireFrameProtocol> mediaWireframe;
@property (nonatomic, strong) MMShowMediaViewController *viewController;

@end

@implementation MMShowMediaWireFrame

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
    self.mediaPresenter = [[MMShowMediaPresenter alloc] init];
    self.mediaPresenter.mediaWireFrame = self;
    self.viewController.mediaPresenter = self.mediaPresenter;
    self.mediaPresenter.mediaView = self.viewController;
    self.mediaPresenter.mediaInteractor = [[MMShowMediaInteractor alloc] init];

}

- (void)presentResultsForToken:(NSString *)token inNavigationController:(UINavigationController *)navigationController {
    
    [self.mediaPresenter loginOKWithToken:token];
    
    [[[[[UIApplication sharedApplication] delegate] window] rootViewController]  presentViewController:self.viewController animated:YES completion:^{
        
        
    }];

}

- (UINavigationController *)getUserInterface {
    
    return self.rootNavigationController;
}

#pragma mark - Lazy Loaded Properties

- (UINavigationController *)rootNavigationController {
    
    if (_rootNavigationController == nil) {
        
        _rootNavigationController = [[UIStoryboard storyboardWithName:@"Main"
                                                               bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"loginNav"];
    }
    
    return _rootNavigationController;
}

#pragma mark - Lazy Loaded Properties

- (MMShowMediaViewController *)viewController {
    
    if (_viewController == nil) {
        
        _viewController = [[UIStoryboard storyboardWithName:@"Main"
                                                     bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"741"];
    }
    
    return _viewController;
}


@end
