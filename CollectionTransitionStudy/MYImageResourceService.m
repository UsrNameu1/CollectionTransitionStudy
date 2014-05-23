//
//  MYImageResourceService.m
//  CollectionTransitionStudy
//
//  Created by adachi.yuichi on 2014/05/22.
//  Copyright (c) 2014年 yad. All rights reserved.
//

#import "MYImageResourceService.h"

@implementation MYImageResourceService

- (NSArray *)images
{
    static NSArray *imageNames;
    
    if (!imageNames) {
        imageNames =
        @[@"sample1",
          @"sample2",
          @"sample3",
          @"sample4",
          @"sample5"];
    }
    
    NSMutableArray *images = [NSMutableArray new];
    for (NSString *imageName in imageNames) {
        [images addObject:[UIImage imageNamed:imageName]];
    }
    
    return [NSArray arrayWithArray:images];
}

@end
