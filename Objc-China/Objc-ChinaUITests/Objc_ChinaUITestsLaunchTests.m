//
//  Objc_ChinaUITestsLaunchTests.m
//  Objc-ChinaUITests
//
//  Created by hwacdx on 2024/10/5.
//

#import <XCTest/XCTest.h>

@interface Objc_ChinaUITestsLaunchTests : XCTestCase

@end

@implementation Objc_ChinaUITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
