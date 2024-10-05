//
//  PhotoCell.h
//  Objc-China
//
//  Created by hwacdx on 2024/10/5.
//

#import <UIKit/UIKit.h>
#import "Photo.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhotoCell : UITableViewCell

@property (strong, nonatomic) UILabel *photoTitleLabel;
@property (strong, nonatomic) UILabel *photoDateLabel;

- (void)configureForPhoto:(Photo *)photo;

@end

NS_ASSUME_NONNULL_END
