import XCTest
import JSONCompare

class JSONCompareTests: XCTestCase {
    func testComparingObject() {
        XCTAssertEqual(
            JSON(json(fromFile: "root_object")!),
            .object([
                "title": .string("JSONCompare"),
                "isOpensource": .bool(true),
                "stars": .number(999),
                "versions": .array([
                    .string("v1.0.0: Equatable"),
                    .string("v2.0.0: Diff"),
                ])
            ])
        )
    }

    func testComparingArray() {
        XCTAssertEqual(
            JSON(json(fromFile: "root_array")!),
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
