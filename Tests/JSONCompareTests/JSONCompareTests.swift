import XCTest
@testable import JSONCompare

class JSONCompareTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(JSONCompare().text, "Hello, World!")
    }


    static var allTests : [(String, (JSONCompareTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
