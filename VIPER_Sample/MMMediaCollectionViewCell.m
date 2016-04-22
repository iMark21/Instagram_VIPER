//
//  MMMediaCollectionViewCell.m
//  MMChicfyTest
//
//  Created by Juan Miguel Marqués Morilla on 28/10/15.
//  Copyright © 2015 Juan Miguel Marqués Morilla. All rights reserved.
//

#import "MMMediaCollectionViewCell.h"
#import <SDWebImage/SDImageCache.h>
#import "UIImageView+WebCache.h"

@implementation MMMediaCollectionViewCell

-(void)setData:(MMShowMediaItem*)media{
    
    self.likesLabel.text = [NSString stringWithFormat:@"%@",[media numberLikes]];
    self.usernameLabel.text = [media username];
    
    [self.imageRated sd_setImageWithURL:[NSURL URLWithString:[media urlImage]] placeholderImage:[UIImage imageNamed:@"placeholder.jpg"] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
    
    }];
    
}

@end
