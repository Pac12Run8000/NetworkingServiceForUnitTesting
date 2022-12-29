//
//  NetworkingSingletonTests.swift
//  NetworkingServiceForUnitTestingTests
//
//  Created by Michelle Grover on 12/29/22.
//

import XCTest
@testable import NetworkingServiceForUnitTesting

final class NetworkingSingletonTests: XCTestCase {
//   You cannot create an instance of the service for teardown or setup
//    var service:NetworkingSingletonService!

    override func setUp() {
        
    }
    
    override func tearDown() {
        
    }

    func testNetworkingSingleton() {
        
        let expectation = XCTestExpectation(description: "singleton call")
        
        NetworkingSingletonService.shared.fetchAPIResponse(url: HelperConstants.testUrl1) { result in
            
            
            print("Fire in the hole!!!")
           
//            switch result {
//            case .success(let data):
//                print("unit test:\(data)")
//            case .failure(let err):
//                print(err.localizedDescription)
//            }
//
//            expectation.fulfill()
        }
        
//        waitForExpectations(timeout: 10)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
