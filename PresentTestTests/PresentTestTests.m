//
//  PresentTestTests.m
//  PresentTestTests
//
//  Created by zhangbin31 on 2020/10/29.
//

#import <XCTest/XCTest.h>

@interface PresentTestTests : XCTestCase

@end

@implementation PresentTestTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    [super setUp];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSLog(@"自定义测试testExample");
    int a = 3;
    XCTAssertTrue(a == 0, "a 不能 等于 0");
}

- (void)testCanBeZero {
    NSLog(@"自定义测试testExample");
    int a = 0;
    XCTAssertTrue(a == 0, "a 不能 等于 0");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
