//
//  AppDelegate.h
//  Objc-China
//
//  Created by hwacdx on 2024/10/5.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class Store;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

+ (instancetype)sharedDelegate;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

@property (readonly, strong, nonatomic) Store *store;

- (void)saveContext;


@end

