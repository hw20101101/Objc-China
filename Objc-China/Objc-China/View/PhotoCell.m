//
//  PhotoCell.m
//  Objc-China
//
//  Created by hwacdx on 2024/10/5.
//

#import "PhotoCell.h"

@implementation PhotoCell

// 把 View 代码移到 View 层
// 不应该在 view controller 中构建复杂的 view 层次结构

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];    
    if (self) {
        _photoTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(17, 4, 200, 20)];
        _photoTitleLabel.font = [UIFont systemFontOfSize:16];
        [self addSubview:_photoTitleLabel];
        
        _photoDateLabel = [[UILabel alloc] initWithFrame:CGRectMake(17, 28, 200, 20)];
        _photoDateLabel.font = [UIFont systemFontOfSize:12];
        _photoDateLabel.textColor = [UIColor lightGrayColor];
        [self addSubview:_photoDateLabel];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configureForPhoto:(Photo *)photo
{
    self.photoTitleLabel.text = photo.name;
    self.photoDateLabel.text = [self.dateFormatter stringFromDate:photo.creationDate];
}

- (NSDateFormatter *)dateFormatter
{
    static NSDateFormatter *dateFormatter;
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.timeStyle = NSDateFormatterMediumStyle;
        dateFormatter.dateStyle = NSDateFormatterMediumStyle;
    }
    return dateFormatter;
}

@end
