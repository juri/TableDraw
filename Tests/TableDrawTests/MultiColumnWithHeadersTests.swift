import TableDraw
import XCTest

final class MultiColumnWithHeadersTests: XCTestCase {
    func testEmpty() throws {
        let col1 = TableColumn(
            fillCharacter: " ",
            header: .init(
                title: "col1",
                trailingMargin: " "
            ),
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col2 = TableColumn(
            fillCharacter: " ",
            header: .init(
                title: "col2",
                trailingMargin: " "
            ),
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col3 = TableColumn(
            fillCharacter: " ",
            header: .init(
                title: "col3"
            ),
            horizontalAlignment: .leading,
            minWidth: 0,
            verticalAlignment: .top
        )
        let table = Table(columns: [col1, col2, col3]) {}
        let output = table.stringValue
        XCTAssertEqual(output, "col1 col2 col3")
    }

    func testHorizontalAlignments() throws {
        let col1 = TableColumn(
            fillCharacter: " ",
            header: .init(
                fillCharacter: ".",
                horizontalAlignment: .trailing,
                title: "col1",
                trailingMargin: " "
            ),
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col2 = TableColumn(
            fillCharacter: " ",
            header: .init(
                fillCharacter: ".",
                horizontalAlignment: .leading,
                title: "col2",
                trailingMargin: " "
            ),
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col3 = TableColumn(
            fillCharacter: " ",
            header: .init(
                fillCharacter: ".",
                horizontalAlignment: .center,
                title: "col3"
            ),
            horizontalAlignment: .leading,
            minWidth: 0,
            verticalAlignment: .top
        )
        let table = Table(columns: [col1, col2, col3]) {
            "long cell"
            "another long cell"
            "longish one too"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            .....col1 col2............. .....col3......
            long cell another long cell longish one too
            """
        )
    }

    func testVerticalAlignments() throws {
        let col1 = TableColumn(
            fillCharacter: " ",
            header: .init(
                fillCharacter: ".",
                horizontalAlignment: .trailing,
                minHeight: 4,
                title: "col1\ncol1line2",
                trailingMargin: " ",
                verticalAlignment: .top
            ),
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col2 = TableColumn(
            fillCharacter: " ",
            header: .init(
                fillCharacter: ".",
                horizontalAlignment: .leading,
                title: "col2",
                trailingMargin: " ",
                verticalAlignment: .middle
            ),
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col3 = TableColumn(
            fillCharacter: " ",
            header: .init(
                fillCharacter: ".",
                horizontalAlignment: .center,
                title: "col3\ncol3line2",
                verticalAlignment: .bottom
            ),
            horizontalAlignment: .leading,
            minWidth: 0,
            verticalAlignment: .top
        )
        let table = Table(columns: [col1, col2, col3]) {
            "long cell"
            "another long cell"
            "longish one too"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            .....col1 ................. ...............
            col1line2 col2............. ...............
            ......... ................. .....col3......
            ......... ................. ...col3line2...
            long cell another long cell longish one too
            """
        )
    }

    func testVerticalPadding() throws {
        let col1 = TableColumn(
            fillCharacter: " ",
            header: .init(
                fillCharacter: ".",
                horizontalAlignment: .trailing,
                minHeight: 4,
                title: "col1\ncol1line2",
                trailingMargin: " ",
                verticalAlignment: .top,
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col2 = TableColumn(
            fillCharacter: " ",
            header: .init(
                fillCharacter: ".",
                horizontalAlignment: .leading,
                title: "col2",
                trailingMargin: " ",
                verticalAlignment: .middle,
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading,
            minWidth: 0,
            trailingMargin: " ",
            verticalAlignment: .top
        )
        let col3 = TableColumn(
            fillCharacter: " ",
            header: .init(
                fillCharacter: ".",
                horizontalAlignment: .center,
                title: "col3\ncol3line2",
                verticalAlignment: .bottom,
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading,
            minWidth: 0,
            verticalAlignment: .top
        )
        let table = Table(columns: [col1, col2, col3]) {
            "long cell"
            "another long cell"
            "longish one too"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            ......... ................. ...............
            .....col1 ................. ...............
            col1line2 col2............. ...............
            ......... ................. .....col3......
            ......... ................. ...col3line2...
            ......... ................. ...............
            ......... ................. ...............
            long cell another long cell longish one too
            """
        )
    }
}
