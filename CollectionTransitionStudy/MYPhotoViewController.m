//
//  MYPhotoViewController.m
//  CollectionTransitionStudy
//
//  Created by adachi yuichi on 2014/05/21.
//  Copyright (c) 2014年 yad. All rights reserved.
//

#import "MYPhotoViewController.h"

@interface MYPhotoViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation MYPhotoViewController

#pragma mark - Lifecycle methods

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource methods

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 0;
}

@end
