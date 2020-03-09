//
//  RecipeModelUnitTests.swift
//  Dev_Pod_Tests
//
//  Created by Akua Afrane-Okese on 2020/03/06.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest
@testable import Dev_Pod

class RecipeModelUnitTests: XCTestCase {

    var recipe: FoodDetails!
    override func setUp() {
        recipe = FoodDetails()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGivenRecipeReturnNotNil() {
        XCTAssertNotNil(recipe)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
