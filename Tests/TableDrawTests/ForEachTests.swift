import TableDraw
import XCTest

final class ForEachTests: XCTestCase {
    func test() throws {
        let col1 = TableColumn(
            horizontalAlignment: .leading,
            trailingMargin: " "
        )

        let col2 = TableColumn(
            horizontalAlignment: .trailing
        )

        struct Entry {
            let name: String
            let value: String
        }

        let entries = [
            Entry(name: "foo", value: "bar"),
            Entry(name: "zuux", value: "op"),
            Entry(name: "bang", value: "zap"),
        ]

        let table = Table(columns: [col1, col2]) {
            ForEach(entries) { entry in
                entry.name
                entry.value
            }
        }

        XCTAssertEqual(
            table.stringValue,
            """
            foo  bar
            zuux  op
            bang zap
            """
        )
    }
}
