import TableDraw
import XCTest

final class FrameTests: XCTestCase {
    func testOneColumnWithHeader() throws {
        let col = TableColumn(
            header: TableColumn.Header(
                bottomBorder: .boxDraw.heavyHorizontal,
                corners: .init(
                    topLeading: .boxDraw.heavyDownAndRight,
                    topTrailing: .boxDraw.heavyDownAndLeft,
                    bottomTrailing: .boxDraw.heavyVerticalAndLeft,
                    bottomLeading: .boxDraw.heavyVerticalAndRight
                ),
                fillCharacter: ".",
                leadingMargin: "\(Character.boxDraw.heavyVertical) ",
                title: "head",
                topBorder: .boxDraw.heavyHorizontal,
                trailingMargin: " \(Character.boxDraw.heavyVertical)",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading,
            leadingMargin: "\(Character.boxDraw.heavyVertical) ",
            trailingMargin: " \(Character.boxDraw.heavyVertical)"
        )
        let table = Table(columns: [col]) {
            "cell1"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            ┏━━━━━━━┓
            ┃ ..... ┃
            ┃ head. ┃
            ┃ ..... ┃
            ┃ ..... ┃
            ┣━━━━━━━┫
            ┃ cell1 ┃
            """
        )
    }
}
