//
//  MMLoginViewController.m
//  VIPER_Sample
//
//  Created by Juan Miguel Marques Morilla on 15/4/16.
//  Copyright © 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import "MMLoginViewController.h"
#import "MMLoginWireframeProtocol.h"
#import "MMLoginWireframe.h"
#import "MMModuleManager.h"
#import <InstagramSimpleOAuth/InstagramSimpleOAuth.h>


@interface MMLoginViewController()

@property (nonatomic, strong) id<MMLoginWireframeProtocol> loginWireframe;
@property (nonatomic, strong) id<MMLoginWireframeProtocol> loginModule;

@end

@implementation MMLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.loginModule = [[MMModuleManager sharedInstance]loginModule];
    
    [self setupViews];
    
}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
}

-(void)setupViews{
        
    [[self.loginModule getPresenter] viewWillDisplayed];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
