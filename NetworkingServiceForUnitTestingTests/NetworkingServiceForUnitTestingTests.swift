//
//  NetworkingServiceForUnitTestingTests.swift
//  NetworkingServiceForUnitTestingTests
//
//  Created by Michelle Grover on 12/29/22.
//

import XCTest
@testable import NetworkingServiceForUnitTesting

final class NetworkingServiceForUnitTestingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let expectation = XCTestExpectation(description: "Async API Call")
        
        let networkingService = NetworkingServiceDependancyInjection()
        networkingService.fetchAPIResponse(url: HelperConstants.testUrl1) { result in
            switch result {
                case .success(let data):
                    XCTAssertNotNil(data)
                    expectation.fulfill()
                case .failure(let error):
                    XCTAssertNil(error)
                expectation.fulfill()
            }
            self.waitForExpectations(timeout: 5)
        }
        
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
