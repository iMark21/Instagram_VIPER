//
//  MMShowMedia.m
//  MMShowMedia_Sample
//
//  Created by Juan Miguel Marques Morilla on 04/18/2016.
//  Copyright (c) 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import "MMShowMediaPresenter.h"
#import "MMShowMediaWireframe.h"
#import "MMShowMediaItem.h"

NSString * const kURL = @"d89c44cbd9b84916a86cf2d09312fd21";


#pragma mark - Interface

@interface MMShowMediaPresenter()

@property (nonatomic, strong) NSString *instagramToken;
@property (nonatomic, strong) NSArray *results;

@end

@implementation MMShowMediaPresenter

-(void)loginOKWithToken: (NSString*)instagramToken{
    

    NSURL *request =  [NSURL URLWithString:[self urlRequest:instagramToken]];
    
     __weak typeof(self) weakSelf = self;
    
    [self.mediaView showLoading:YES];
    
    [self.mediaInteractor requestDataFrom:request completionBlock:^(NSArray *results, NSError *error) {
        
       // NSLog(@"%@",results);
        [weakSelf.mediaView showLoading:NO];
        
        if (results.count > 0) {
            
            // Save the results
            weakSelf.results = results;
            
            // We got results, convert data model domain objects into view model domain objects
            [weakSelf.mediaView presentMediaResults:[weakSelf viewModelsForDataModels:results]];
            
        } else if (error != nil) {
            
            // Apologies here for very crude error handling. Was too tight on time
            //[weakSelf.userInterface showErrorMessage:@"Error With Search!"];
            
        } else {
            
            //[weakSelf.userInterface showErrorMessage:@"No Results for your query"];
        }

        
        
    }];
}

-(NSString*)urlRequest:(NSString*)instagramToken{
    
    
    return [NSString stringWithFormat:@"https://api.instagram.com/v1/media/popular?access_token=%@",instagramToken];
    
}


#pragma mark - View Model Generation

// Generate the view models from the data models. Avoid having mutable data models
// in the view controller. Also separates concerns nicely
- (NSArray *)viewModelsForDataModels:(NSArray *)dataModels {
    
    NSMutableArray *viewModels = [NSMutableArray new];
    
    NSDictionary *dictionary = [dataModels valueForKey:@"data"];
    
    for (NSDictionary *dataModel in dictionary) {
 
        MMShowMediaItem *viewModel = [[MMShowMediaItem alloc] initWithUsername:[dataModel valueForKeyPath:@"user.username"] urlImage:[dataModel valueForKeyPath:@"images.low_resolution.url"] urlImageHD:[dataModel valueForKeyPath:@"images.standard_resolution.url"] numberLikes:[dataModel valueForKeyPath:@"likes.count"]];
        
        [viewModels addObject:viewModel];
    }
    
    return [NSArray arrayWithArray:viewModels];
}



@end