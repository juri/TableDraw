import TableDraw
import XCTest

final class SingleColumnWithHeaderTests: XCTestCase {
    func testEmpty() throws {
        let col = TableColumn(
            header: TableColumn.Header(title: "head"),
            horizontalAlignment: .leading
        )
        let table = Table(columns: [col]) {}
        let output = table.stringValue
        XCTAssertEqual(output, "head")
    }

    func testOneRow() throws {
        let col = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "head"
            ),
            horizontalAlignment: .leading
        )
        let table = Table(columns: [col]) {
            "cell1"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            head.
            cell1
            """
        )
    }
}
