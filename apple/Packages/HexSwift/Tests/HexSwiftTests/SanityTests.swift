import Foundation
import XCTest

final class SanityTests: XCTestCase {
    func testXCTAssert() {
        let one: Int = 1
        XCTAssert((one as Any) is Int)
        XCTAssertNil(nil)
        XCTAssertNotNil(Optional.some(one))
        XCTAssertFalse(false)
        XCTAssertFalse(1 == 2)
        XCTAssertTrue(true)
        XCTAssertTrue(1 == one)
        XCTAssertEqual(1.0, 1.0)
        XCTAssertNotEqual(1.0, 2.0)
        let a: AnyObject = "a string" as AnyObject
        let b: AnyObject = a
        XCTAssertIdentical(a, b)
        let c: AnyObject = "c string" as AnyObject
        XCTAssertNotIdentical(a, c)
        XCTAssertLessThan(1, 2)
        XCTAssertLessThanOrEqual(1, 1)
        XCTAssertGreaterThan(2, 1)
        XCTAssertGreaterThanOrEqual(2, 2)
        XCTAssertThrowsError(try throwError())
        XCTAssertNoThrow(try noThrow())
    }
    
    func testXCTUnwrap() throws {
        let trueVal = try XCTUnwrap(Optional.some(true))
        XCTAssertTrue(trueVal)
        
        let someInt: Int? = 1
        let unwrapped = try XCTUnwrap(someInt)
        XCTAssertEqual(unwrapped, someInt)
    }
    
    func testEquatable() {
        // Int
        XCTAssertEqual(1, 1)
        XCTAssert(1 == 1)
        XCTAssertEqual(1, Int("1"))
        
        // String
        XCTAssertEqual("1", "1")
        XCTAssert("1" == "1")
        XCTAssert("1" == "\(1)")
        
        // Optionals
        XCTAssertNil(Optional.none)
        XCTAssertNotNil(Optional.some(1))
    }
    
    private func throwError() throws {
        throw SanityError.simple
    }
    
    private func noThrow() throws -> Bool {
        return false
    }
}

enum SanityError: Error {
    case simple
}
