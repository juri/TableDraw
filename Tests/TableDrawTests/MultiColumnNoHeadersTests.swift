import TableDraw
import XCTest

final class MultiColumnNoHeadersTests: XCTestCase {
    func testEmpty() throws {
        let col1 = TableColumn(
            fillCharacter: " ",
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col2 = TableColumn(
            fillCharacter: " ",
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col3 = TableColumn(
            fillCharacter: " ",
            horizontalAlignment: .leading,
            minWidth: 0,
            verticalAlignment: .top
        )
        let table = Table(columns: [col1, col2, col3]) {}
        let output = table.stringValue
        XCTAssertEqual(output, "")
    }

    func testOneRow() throws {
        let col1 = TableColumn(
            fillCharacter: " ",
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col2 = TableColumn(
            fillCharacter: " ",
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col3 = TableColumn(
            fillCharacter: " ",
            horizontalAlignment: .leading,
            minWidth: 0,
            verticalAlignment: .top
        )
        let table = Table(columns: [col1, col2, col3]) {
            "cell1"
            "cell2"
            "cell3"
        }
        let output = table.stringValue
        XCTAssertEqual(output, "cell1 cell2 cell3")
    }

    func testTwoRows() throws {
        let col1 = TableColumn(
            fillCharacter: " ",
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col2 = TableColumn(
            fillCharacter: " ",
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col3 = TableColumn(
            fillCharacter: " ",
            horizontalAlignment: .leading,
            minWidth: 0,
            verticalAlignment: .top
        )
        let table = Table(columns: [col1, col2, col3]) {
            "cell1"
            "cell2"
            "cell3"
            "cell4"
            "cell5"
            "cell6"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            cell1 cell2 cell3
            cell4 cell5 cell6
            """
        )
    }

    func testHorizontalAlignments() throws {
        let col1 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col2 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .center,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col3 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .trailing,
            minWidth: 0,
            verticalAlignment: .top
        )
        let table = Table(columns: [col1, col2, col3]) {
            "cell1q"
            "cell2qqqqq"
            "cell3qqq"
            "cell4qqqq"
            "cell5qq"
            "cell6qqqqqq"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            cell1q... cell2qqqqq ...cell3qqq
            cell4qqqq .cell5qq.. cell6qqqqqq
            """
        )
    }

    func testMinWidth() throws {
        let col1 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .leading,
            minWidth: 12,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col2 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .center,
            minWidth: 14,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col3 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .trailing,
            minWidth: 16,
            verticalAlignment: .top
        )
        let table = Table(columns: [col1, col2, col3]) {
            "cell1q"
            "cell2qqqqq"
            "cell3qqq"
            "cell4qqqq"
            "cell5qq"
            "cell6qqqqqq"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            cell1q...... ..cell2qqqqq.. ........cell3qqq
            cell4qqqq... ...cell5qq.... .....cell6qqqqqq
            """
        )
    }

    func testTrailingMargin() throws {
        let col1 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .leading,
            minWidth: 12,
            trailingMargin: "* ",
            verticalAlignment: .top
        )
        let col2 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .center,
            minWidth: 14,
            trailingMargin: " & ",
            verticalAlignment: .top
        )
        let col3 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .trailing,
            minWidth: 16,
            trailingMargin: " ^",
            verticalAlignment: .top
        )
        let table = Table(columns: [col1, col2, col3]) {
            "cell1q"
            "cell2qqqqq"
            "cell3qqq"
            "cell4qqqq"
            "cell5qq"
            "cell6qqqqqq"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            cell1q......* ..cell2qqqqq.. & ........cell3qqq ^
            cell4qqqq...* ...cell5qq.... & .....cell6qqqqqq ^
            """
        )
    }

    func testLeadingMargin() throws {
        let col1 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .leading,
            leadingMargin: "# ",
            minWidth: 12,
            trailingMargin: "* ",
            verticalAlignment: .top
        )
        let col2 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .center,
            leadingMargin: " % ",
            minWidth: 14,
            trailingMargin: " & ",
            verticalAlignment: .top
        )
        let col3 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .trailing,
            leadingMargin: " :",
            minWidth: 16,
            trailingMargin: " ^",
            verticalAlignment: .top
        )
        let table = Table(columns: [col1, col2, col3]) {
            "cell1q"
            "cell2qqqqq"
            "cell3qqq"
            "cell4qqqq"
            "cell5qq"
            "cell6qqqqqq"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            # cell1q......*  % ..cell2qqqqq.. &  :........cell3qqq ^
            # cell4qqqq...*  % ...cell5qq.... &  :.....cell6qqqqqq ^
            """
        )
    }

    func testVerticalAlignments() throws {
        let col1 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .leading,
            leadingMargin: "# ",
            minWidth: 12,
            trailingMargin: "* ",
            verticalAlignment: .top
        )
        let col2 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .center,
            leadingMargin: " % ",
            minWidth: 14,
            trailingMargin: " & ",
            verticalAlignment: .middle
        )
        let col3 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .trailing,
            leadingMargin: " :",
            minWidth: 16,
            trailingMargin: " ^",
            verticalAlignment: .bottom
        )
        let table = Table(columns: [col1, col2, col3]) {
            "cell1"
            "cell2\ncell2line2\ncell2line3"
            "cell3\ncell3line2"

            "cell4\ncell4line2"
            "cell5\ncell5line2"
            "cell6\ncell6line2\ncell6line3"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            # cell1.......*  % ....cell2..... &  :................ ^
            # ............*  % ..cell2line2.. &  :...........cell3 ^
            # ............*  % ..cell2line3.. &  :......cell3line2 ^
            # cell4.......*  % ....cell5..... &  :...........cell6 ^
            # cell4line2..*  % ..cell5line2.. &  :......cell6line2 ^
            # ............*  % .............. &  :......cell6line3 ^
            """
        )
    }

    func testVerticalPadding() throws {
        let col1 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .leading,
            leadingMargin: "# ",
            minWidth: 12,
            trailingMargin: "* ",
            verticalAlignment: .top,
            verticalPadding: .init(top: 2, bottom: 1)
        )
        let col2 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .center,
            leadingMargin: " % ",
            minWidth: 14,
            trailingMargin: " & ",
            verticalAlignment: .middle
        )
        let col3 = TableColumn(
            fillCharacter: ".",
            horizontalAlignment: .trailing,
            leadingMargin: " :",
            minWidth: 16,
            trailingMargin: " ^",
            verticalAlignment: .bottom
        )
        let table = Table(columns: [col1, col2, col3]) {
            "cell1"
            "cell2\ncell2line2\ncell2line3"
            "cell3\ncell3line2"

            "cell4\ncell4line2"
            "cell5\ncell5line2"
            "cell6\ncell6line2\ncell6line3"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            # ............*  % ....cell2..... &  :................ ^
            # ............*  % ..cell2line2.. &  :................ ^
            # cell1.......*  % ..cell2line3.. &  :...........cell3 ^
            # ............*  % .............. &  :......cell3line2 ^
            # ............*  % .............. &  :................ ^
            # ............*  % ....cell5..... &  :................ ^
            # cell4.......*  % ..cell5line2.. &  :...........cell6 ^
            # cell4line2..*  % .............. &  :......cell6line2 ^
            # ............*  % .............. &  :......cell6line3 ^
            """
        )
    }
}
