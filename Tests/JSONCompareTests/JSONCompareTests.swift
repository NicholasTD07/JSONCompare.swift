import XCTest
import JSONCompare

class JSONCompareTests: XCTestCase {
    func testComparingArray() {
        let jsonValue = json(fromFile: "root_array")!

        XCTAssertNotNil(jsonValue)
        XCTAssertEqual(
            JSON(jsonValue),
            .array([
                .string("a"),
                .string("b"),
                .string("c"),
            ])
        )
    }


    static var allTests : [(String, (JSONCompareTests) -> () throws -> Void)] {
        return [
        ]
    }
}
