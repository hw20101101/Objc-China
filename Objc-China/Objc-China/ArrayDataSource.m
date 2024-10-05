//
//  ArrayDataSource.m
//  Objc-China
//
//  Created by hwacdx on 2024/10/5.
//

#import "ArrayDataSource.h"
#import "PhotoCell.h"

@interface ArrayDataSource()

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy) NSString *cellId;
@property (nonatomic, copy) TableViewCellConfigureBlock configureCellBlock;

@end

@implementation ArrayDataSource

- (id)init
{
    return nil;
}

- (id)initWithItems:(NSArray *)anItems cellId:(NSString *)aCellId configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock {
    
    self = [super init];
    if (self) {
        self.items = anItems;
        self.cellId = aCellId;
        self.configureCellBlock = [aConfigureCellBlock copy];
    }
    return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.items[indexPath.row];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellId forIndexPath:indexPath];
    
    PhotoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) {
        cell = [[PhotoCell alloc] initWithStyle:0 reuseIdentifier:@"cell"];
    }
    
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell, item);
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section { 
    
    return self.items.count;
}

@end
