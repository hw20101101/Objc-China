//
//  Photo.h
//  Objc-China
//
//  Created by hwacdx on 2024/10/5.
//

#import <Foundation/Foundation.h>
#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface Photo : NSObject <NSCoding>

@property (nonatomic) int64_t identifier;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSDate *creationDate;
@property (nonatomic) double rating;

@property (nonatomic, weak) User *user;

- (NSString *)authorFullName;
- (double)adjustedRating;

@end

NS_ASSUME_NONNULL_END
