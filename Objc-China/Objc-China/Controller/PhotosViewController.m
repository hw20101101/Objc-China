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
    
    //使用一个 block 来设置 cell，也可以用 delegate 来做这件事，这取决于你的习惯。
    TableViewCellConfigureBlock configureCell = ^(PhotoCell *cell, Photo *photo) {
        [cell configureForPhoto:photo];
    };
    
    NSArray *photos = [AppDelegate sharedDelegate].store.sortedPhotos;
    
    // 创建一个 ArrayDataSource 类的实例作为 table view 的 data source
    self.dataSource = [[ArrayDataSource alloc] initWithItems:photos cellId:@"cellId" configureCellBlock:configureCell];
    self.tableView.dataSource = self.dataSource;
}

/*
 注：把 UITableViewDataSource 的代码提取出来放到一个单独的类中，是为 view controller 瘦身的强大技术之一。
 */

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"-->> didSelectRowAtIndexPath");
}

@end
