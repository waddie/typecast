import XCTest
import SwiftTreeSitter
import TreeSitterTypecast

final class TreeSitterTypecastTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_typecast())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading typecast grammar")
    }
}
