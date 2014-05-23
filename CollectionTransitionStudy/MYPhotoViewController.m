//
//  MYPhotoViewController.m
//  CollectionTransitionStudy
//
//  Created by adachi yuichi on 2014/05/21.
//  Copyright (c) 2014年 yad. All rights reserved.
//

#import "MYPhotoViewController.h"

#import "MYImageResourceService.h"

static NSString *const CellIdentifier = @"CellIdentifier";

@interface MYPhotoViewController () <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property NSArray *photoImages;

@end

@implementation MYPhotoViewController

#pragma mark - Lifecycle methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.collectionView registerClass:[UICollectionViewCell class]
            forCellWithReuseIdentifier:CellIdentifier];
    self.collectionView.collectionViewLayout
    
    self.photoImages = [MYImageResourceService new].images;
    
    [self.collectionView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource methods

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell =
    [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier
                                              forIndexPath:indexPath];
    
    return nil;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.photoImages.count;
}

@end
