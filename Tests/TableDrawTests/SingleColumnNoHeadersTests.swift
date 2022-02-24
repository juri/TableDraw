import TableDraw
import XCTest

final class SingleColumnNoHeadersTests: XCTestCase {
    func testEmpty() throws {
        let col = TableColumn(
            horizontalAlignment: .leading
        )
        let table = Table(columns: [col]) {}
        let output = table.stringValue
        XCTAssertEqual(output, "")
    }

    func testOneRow() throws {
        let col = TableColumn(
            horizontalAlignment: .leading
        )
        let table = Table(columns: [col]) {
            "cell1"
        }
        let output = table.stringValue
        XCTAssertEqual(output, "cell1")
    }

    func testTwoRows() throws {
        let col = TableColumn(
            horizontalAlignment: .leading
        )
        let table = Table(columns: [col]) {
            "cell1"
            "cell2"
        }
        let output = table.stringValue
        XCTAssertEqual(output, "cell1\ncell2")
    }

    func testLeadingAlignment() throws {
        let col = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .leading
        )
        let table = Table(columns: [col]) {
            "cell1"
            "cell2longer"
            "cell3longest"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            cell1.......
            cell2longer.
            cell3longest
            """
        )
    }

    func testCenterAlignment() throws {
        let col = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .center
        )
        let table = Table(columns: [col]) {
            "cell1longest"
            "cell2"
            "cell3longer"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            cell1longest
            ...cell2....
            cell3longer.
            """
        )
    }

    func testTrailingAlignment() throws {
        let col = TableColumn(
            horizontalAlignment: .trailing
        )
        let table = Table(columns: [col]) {
            "cell1longer"
            "cell2longest"
            "cell3"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
             cell1longer
            cell2longest
                   cell3
            """
        )
    }

    func testMinWidth() throws {
        let col = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .center,
            minWidth: 16
        )
        let table = Table(columns: [col]) {
            "cell1longer"
            "cell2longest"
            "cell3"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            ..cell1longer...
            ..cell2longest..
            .....cell3......
            """
        )
    }
}
