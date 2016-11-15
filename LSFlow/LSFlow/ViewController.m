//
//  ViewController.m
//  LSFlow
//
//  Created by WangBiao on 2016/11/15.
//  Copyright © 2016年 lsrain. All rights reserved.
//

#import "ViewController.h"
#import "LSFlowLayout.h"

@interface ViewController ()

@end

@implementation ViewController

static NSString * const reuseIdentifier = @"cellid";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 切换布局
    self.collectionView.collectionViewLayout = [[LSFlowLayout alloc] init];
}

#pragma mark <UICollectionViewDataSource>
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 50;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor greenColor];
    return cell;
}
@end
