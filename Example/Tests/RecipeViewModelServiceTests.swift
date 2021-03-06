//
//  RecipeViewModelServiceTests.swift
//  Dev_Pod_Tests
//
//  Created by Akua Afrane-Okese on 2020/03/09.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest
@testable import Dev_Pod
class RecipeViewModelServiceTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGivenSearchCredsReturnSearchResultTitleSuccess() {
        var searchResultTitle = ""
        let foodRequest = FoodRequest(foodQuery: "fish", typeQuery: "i")
        foodRequest.getSearchResult {(result) in
                        searchResultTitle = result[0].title
            XCTAssertEqual(searchResultTitle, "Fish Marinade for People Who Hate Fish")
        }
    }

    func testGivenSearchCredsReturnSearchResultTitleFailure() {
        var searchResultTitle = ""
        let foodRequest = FoodRequest(foodQuery: "fishy", typeQuery: "i")
        foodRequest.getSearchResult {(result) in
                        searchResultTitle = result[0].title
            XCTAssertNotEqual(searchResultTitle, "Fish Marinade for People Who Hate Fish")
        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
