//
//  MMShowMedia.m
//  MMShowMedia_Sample
//
//  Created by Juan Miguel Marques Morilla on 04/18/2016.
//  Copyright (c) 2016 Juan Miguel Marques Morilla. All rights reserved.
//

#import "MMShowMediaViewController.h"
#import "MMShowMediaItem.h"
#import "MMMediaCollectionViewCell.h"
#import "SVProgressHUD.h"

@interface MMShowMediaViewController()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) NSArray *results;

@end

@implementation MMShowMediaViewController

#pragma mark - ViewController Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}


- (void)presentMediaResults:(NSArray *)results{
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        self.results = results;
        
        [self.collectionView reloadData];
        
    });
}

-(void)showLoading:(BOOL)show{
    
    show ? [SVProgressHUD show] : [SVProgressHUD dismiss];
    
}

#pragma mark UICollectionView delegate methods

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [self.results count];
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    CGFloat width =  (collectionView.bounds.size.width-30)/2;
    CGFloat height = (collectionView.bounds.size.width-30)/2;
    
    
    return CGSizeMake(width, height);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
        
    MMShowMediaItem *media = self.results[indexPath.row];
    
    MMMediaCollectionViewCell *cell = (MMMediaCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionCell" forIndexPath:indexPath];
    
    [cell setData:media];
    
    return cell;
    
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //TO-DO
    
}


@end