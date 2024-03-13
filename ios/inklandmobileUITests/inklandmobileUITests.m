//
//  inklandmobileUITests.m
//  inklandmobileUITests
//
//  Created by Marcelo on 24/02/2024.
//

#import <XCTest/XCTest.h>

@interface inklandmobileUITests : XCTestCase

@end

@implementation inklandmobileUITests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  [super setUp];
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
  [[[XCUIApplication alloc] init] activate];
  [[[XCUIApplication alloc] init] launch];
    // In UI tes  ts it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testSum {
    // UI tests must launch the application that they test.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  [XCTContext runActivityNamed:@"screenshot" block:^(id<XCTActivity>  _Nonnull activity) {
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [/*@START_MENU_TOKEN@*/app.textFields[@"Ex. 35"]/*[["app","[",".otherElements matchingIdentifier:@\"Ex. 35 Ex. 3 0 SUM quit\"]",".otherElements[@\"Ex. 35\"].textFields[@\"Ex. 35\"]",".textFields[@\"Ex. 35\"]"],[[[-1,0,1]],[[-1,4],[-1,3],[1,2,2]],[[-1,4],[-1,3]]],[0,0]]@END_MENU_TOKEN@*/ tap];
    [app.textFields[@"Ex. 35"] typeText:@"3"];
    
    [/*@START_MENU_TOKEN@*/app.textFields[@"Ex. 3"]/*[["app","[",".otherElements matchingIdentifier:@\"Ex. 3 0 SUM quit\"]",".otherElements[@\"Ex. 3\"].textFields[@\"Ex. 3\"]",".textFields[@\"Ex. 3\"]"],[[[-1,0,1]],[[-1,4],[-1,3],[1,2,2]],[[-1,4],[-1,3]]],[0,0]]@END_MENU_TOKEN@*/ tap];
    [/*@START_MENU_TOKEN@*/app.textFields[@"Ex. 3"]/*[["app","[",".otherElements matchingIdentifier:@\"Ex. 3 0 SUM quit\"]",".otherElements[@\"Ex. 3\"].textFields[@\"Ex. 3\"]",".textFields[@\"Ex. 3\"]"],[[[-1,0,1]],[[-1,4],[-1,3],[1,2,2]],[[-1,4],[-1,3]]],[0,0]]@END_MENU_TOKEN@*/ typeText:@"2"];
    
    [app/*@START_MENU_TOKEN@*/.buttons[@"Return"]/*[[".keyboards",".buttons[@\"return\"]",".buttons[@\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/ tap];
    [/*@START_MENU_TOKEN@*/app.staticTexts[@"SUM"]/*[["app","[",".otherElements matchingIdentifier:@\"0 SUM quit\"]",".otherElements[@\"SUM\"].staticTexts[@\"SUM\"]",".staticTexts[@\"SUM\"]"],[[[-1,0,1]],[[-1,4],[-1,3],[1,2,2]],[[-1,4],[-1,3]]],[0,0]]@END_MENU_TOKEN@*/ tap];
    XCUIElement *diffLabel = [[XCUIApplication alloc] init].staticTexts[@"5"];
    XCTAssertEqual(diffLabel.exists, true);
  }];
}

- (void)testQuit {
    // UI tests must launch the application that they test.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  [XCTContext runActivityNamed:@"screenshot" block:^(id<XCTActivity>  _Nonnull activity) {
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [/*@START_MENU_TOKEN@*/app.textFields[@"Ex. 35"]/*[["app","[",".otherElements matchingIdentifier:@\"Ex. 35 Ex. 3 0 SUM quit\"]",".otherElements[@\"Ex. 35\"].textFields[@\"Ex. 35\"]",".textFields[@\"Ex. 35\"]"],[[[-1,0,1]],[[-1,4],[-1,3],[1,2,2]],[[-1,4],[-1,3]]],[0,0]]@END_MENU_TOKEN@*/ tap];
    [app.textFields[@"Ex. 35"] typeText:@"3"];
    
    [/*@START_MENU_TOKEN@*/app.textFields[@"Ex. 3"]/*[["app","[",".otherElements matchingIdentifier:@\"Ex. 3 0 SUM quit\"]",".otherElements[@\"Ex. 3\"].textFields[@\"Ex. 3\"]",".textFields[@\"Ex. 3\"]"],[[[-1,0,1]],[[-1,4],[-1,3],[1,2,2]],[[-1,4],[-1,3]]],[0,0]]@END_MENU_TOKEN@*/ tap];
    [/*@START_MENU_TOKEN@*/app.textFields[@"Ex. 3"]/*[["app","[",".otherElements matchingIdentifier:@\"Ex. 3 0 SUM quit\"]",".otherElements[@\"Ex. 3\"].textFields[@\"Ex. 3\"]",".textFields[@\"Ex. 3\"]"],[[[-1,0,1]],[[-1,4],[-1,3],[1,2,2]],[[-1,4],[-1,3]]],[0,0]]@END_MENU_TOKEN@*/ typeText:@"2"];
    
    [app/*@START_MENU_TOKEN@*/.buttons[@"Return"]/*[[".keyboards",".buttons[@\"return\"]",".buttons[@\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/ tap];
    [app.staticTexts[@"quit"] tap];
    XCUIElement *diffLabel = [[XCUIApplication alloc] init].staticTexts[@"1"];
    XCTAssertEqual(diffLabel.exists, true);
  }];
}

- (void)testLaunchPerformance {
    if (@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *)) {
        // This measures how long it takes to launch your application.
        [self measureWithMetrics:@[[[XCTApplicationLaunchMetric alloc] init]] block:^{
            [[[XCUIApplication alloc] init] activate];
            [[[XCUIApplication alloc] init] launch];
        }];
    }
}

@end
