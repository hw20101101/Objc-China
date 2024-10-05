//
//  PhotosViewController.m
//  Objc-China
//
//  Created by hwacdx on 2024/10/5.
//

#import "PhotosViewController.h"
#import "ArrayDataSource.h"
#import "PhotoCell.h"
#import "Photo.h"
#import "Store.h"
#import "AppDelegate.h"

@interface PhotosViewController ()

@property (nonatomic, strong) ArrayDataSource *dataSource;

@end

@implementation PhotosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTableView];
}

- (void)setupTableView {
    
    TableViewCellConfigureBlock configureCell = ^(PhotoCell *cell, Photo *photo) {
        [cell configureForPhoto:photo];
    };
    
    NSArray *photos = [AppDelegate sharedDelegate].store.sortedPhotos;
    self.dataSource = [[ArrayDataSource alloc] initWithItems:photos cellId:@"cellId" configureCellBlock:configureCell];
    self.tableView.dataSource = self.dataSource;
    //[self.tableView registerClass:[PhotoCell class] forCellReuseIdentifier:@"cellId"];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"-->> didSelectRowAtIndexPath");
}

@end
