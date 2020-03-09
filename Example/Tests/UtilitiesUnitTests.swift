import XCTest
@testable import Dev_Pod

class UtilitiesUnitTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    func testGivenIncorrectPasswordReturnFalse() {
        XCTAssertFalse(Constants.isPasswordValid(""))
    }

    func testGivenCorrectPasswordReturnTrue() {
        XCTAssertTrue(Constants.isPasswordValid("HelloWorld@"))
    }
    
    func testUtilities(){
        let utilities = Utilities()
        XCTAssertNotNil(utilities)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
}
