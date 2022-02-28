import TableDraw
import XCTest

final class FrameTests: XCTestCase {
    func testOneColumnWithHeader() throws {
        let col = TableColumn(
            footer: .init(
                border: .boxDraw.heavyHorizontal,
                leadingCorner: .boxDraw.heavyUpAndRight,
                trailingCorner: .boxDraw.heavyUpAndLeft
            ),
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
            ┗━━━━━━━┛
            """
        )
    }

    func testMultiColumnWithHeaderWithoutCorners() throws {
        let col1 = TableColumn(
            footer: .init(border: .boxDraw.heavyHorizontal),
            header: TableColumn.Header(
                bottomBorder: .boxDraw.heavyHorizontal,
                fillCharacter: ".",
                leadingMargin: "\(Character.boxDraw.heavyVertical) ",
                title: "col1",
                topBorder: .boxDraw.heavyHorizontal,
                trailingMargin: " \(Character.boxDraw.heavyVertical)",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading,
            leadingMargin: "\(Character.boxDraw.heavyVertical) ",
            trailingMargin: " \(Character.boxDraw.heavyVertical)"
        )
        let col2 = TableColumn(
            footer: .init(border: .boxDraw.heavyHorizontal),
            header: TableColumn.Header(
                bottomBorder: .boxDraw.heavyHorizontal,
                fillCharacter: ".",
                leadingMargin: " ",
                title: "col2",
                topBorder: .boxDraw.heavyHorizontal,
                trailingMargin: " \(Character.boxDraw.heavyVertical)",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading,
            leadingMargin: " ",
            trailingMargin: " \(Character.boxDraw.heavyVertical)"
        )
        let col3 = TableColumn(
            footer: .init(border: .boxDraw.heavyHorizontal),
            header: TableColumn.Header(
                bottomBorder: .boxDraw.heavyHorizontal,
                fillCharacter: ".",
                leadingMargin: " ",
                title: "col3",
                topBorder: .boxDraw.heavyHorizontal,
                trailingMargin: " \(Character.boxDraw.heavyVertical)",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading,
            leadingMargin: " ",
            trailingMargin: " \(Character.boxDraw.heavyVertical)"
        )

        let table = Table(columns: [col1, col2, col3]) {
            "cell1"
            "cell2"
            "cell3"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            ━━━━━━━━━━━━━━━━━━━━━━━━━
            ┃ ..... ┃ ..... ┃ ..... ┃
            ┃ col1. ┃ col2. ┃ col3. ┃
            ┃ ..... ┃ ..... ┃ ..... ┃
            ┃ ..... ┃ ..... ┃ ..... ┃
            ━━━━━━━━━━━━━━━━━━━━━━━━━
            ┃ cell1 ┃ cell2 ┃ cell3 ┃
            ━━━━━━━━━━━━━━━━━━━━━━━━━
            """
        )
    }

    func testMultiColumnWithHeader() throws {
        let col1 = TableColumn(
            footer: .init(
                border: .boxDraw.heavyHorizontal,
                leadingCorner: .boxDraw.heavyUpAndRight,
                trailingCorner: .boxDraw.heavyUpAndHorizontal
            ),
            header: TableColumn.Header(
                bottomBorder: .boxDraw.heavyHorizontal,
                corners: .init(
                    topLeading: .boxDraw.heavyDownAndRight,
                    topTrailing: .boxDraw.heavyDownAndHorizontal,
                    bottomTrailing: .boxDraw.heavyVerticalAndHorizontal,
                    bottomLeading: .boxDraw.heavyVerticalAndRight
                ),
                fillCharacter: ".",
                leadingMargin: "\(Character.boxDraw.heavyVertical) ",
                title: "col1",
                topBorder: .boxDraw.heavyHorizontal,
                trailingMargin: " \(Character.boxDraw.heavyVertical)",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading,
            leadingMargin: "\(Character.boxDraw.heavyVertical) ",
            trailingMargin: " \(Character.boxDraw.heavyVertical)"
        )
        let col2 = TableColumn(
            footer: .init(
                border: .boxDraw.heavyHorizontal,
                leadingCorner: nil,
                trailingCorner: .boxDraw.heavyUpAndHorizontal
            ),
            header: TableColumn.Header(
                bottomBorder: .boxDraw.heavyHorizontal,
                corners: .init(
                    topLeading: .boxDraw.heavyHorizontal,
                    topTrailing: .boxDraw.heavyDownAndHorizontal,
                    bottomTrailing: .boxDraw.heavyVerticalAndHorizontal,
                    bottomLeading: .boxDraw.heavyHorizontal
                ),
                fillCharacter: ".",
                leadingMargin: " ",
                title: "col2",
                topBorder: .boxDraw.heavyHorizontal,
                trailingMargin: " \(Character.boxDraw.heavyVertical)",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading,
            leadingMargin: " ",
            trailingMargin: " \(Character.boxDraw.heavyVertical)"
        )
        let col3 = TableColumn(
            footer: .init(
                border: .boxDraw.heavyHorizontal,
                leadingCorner: nil,
                trailingCorner: .boxDraw.heavyUpAndLeft
            ),
            header: TableColumn.Header(
                bottomBorder: .boxDraw.heavyHorizontal,
                corners: .init(
                    topLeading: .boxDraw.heavyHorizontal,
                    topTrailing: .boxDraw.heavyDownAndLeft,
                    bottomTrailing: .boxDraw.heavyVerticalAndLeft,
                    bottomLeading: .boxDraw.heavyHorizontal
                ),
                fillCharacter: ".",
                leadingMargin: " ",
                title: "col3",
                topBorder: .boxDraw.heavyHorizontal,
                trailingMargin: " \(Character.boxDraw.heavyVertical)",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading,
            leadingMargin: " ",
            trailingMargin: " \(Character.boxDraw.heavyVertical)"
        )

        let table = Table(columns: [col1, col2, col3]) {
            "cell1"
            "cell2"
            "cell3"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            ┏━━━━━━━┳━━━━━━━┳━━━━━━━┓
            ┃ ..... ┃ ..... ┃ ..... ┃
            ┃ col1. ┃ col2. ┃ col3. ┃
            ┃ ..... ┃ ..... ┃ ..... ┃
            ┃ ..... ┃ ..... ┃ ..... ┃
            ┣━━━━━━━╋━━━━━━━╋━━━━━━━┫
            ┃ cell1 ┃ cell2 ┃ cell3 ┃
            ┗━━━━━━━┻━━━━━━━┻━━━━━━━┛
            """
        )
    }

    func testMultiColumnWithHeaderWithConfiguredDoubleBorders() throws {
        let col1 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col1",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )
        let col2 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col2",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )
        let col3 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col3",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )

        let cols = TableColumn.configureBorders(in: [col1, col2, col3], uniformStyle: .double)

        let table = Table(columns: cols) {
            "cell1"
            "cell2"
            "cell3"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            ╔═══════╦═══════╦═══════╗
            ║ ..... ║ ..... ║ ..... ║
            ║ col1. ║ col2. ║ col3. ║
            ║ ..... ║ ..... ║ ..... ║
            ║ ..... ║ ..... ║ ..... ║
            ╠═══════╬═══════╬═══════╣
            ║ cell1 ║ cell2 ║ cell3 ║
            ╚═══════╩═══════╩═══════╝
            """
        )
    }

    func testMultiColumnWithHeaderWithConfiguredHeavyBorders() throws {
        let col1 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col1",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )
        let col2 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col2",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )
        let col3 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col3",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )

        let cols = TableColumn.configureBorders(in: [col1, col2, col3], uniformStyle: .heavy)

        let table = Table(columns: cols) {
            "cell1"
            "cell2"
            "cell3"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            ┏━━━━━━━┳━━━━━━━┳━━━━━━━┓
            ┃ ..... ┃ ..... ┃ ..... ┃
            ┃ col1. ┃ col2. ┃ col3. ┃
            ┃ ..... ┃ ..... ┃ ..... ┃
            ┃ ..... ┃ ..... ┃ ..... ┃
            ┣━━━━━━━╋━━━━━━━╋━━━━━━━┫
            ┃ cell1 ┃ cell2 ┃ cell3 ┃
            ┗━━━━━━━┻━━━━━━━┻━━━━━━━┛
            """
        )
    }

    func testMultiColumnWithHeaderWithConfiguredLightBorders() throws {
        let col1 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col1",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )
        let col2 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col2",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )
        let col3 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col3",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )

        let cols = TableColumn.configureBorders(in: [col1, col2, col3], uniformStyle: .light)

        let table = Table(columns: cols) {
            "cell1"
            "cell2"
            "cell3"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            ┌───────┬───────┬───────┐
            │ ..... │ ..... │ ..... │
            │ col1. │ col2. │ col3. │
            │ ..... │ ..... │ ..... │
            │ ..... │ ..... │ ..... │
            ├───────┼───────┼───────┤
            │ cell1 │ cell2 │ cell3 │
            └───────┴───────┴───────┘
            """
        )
    }

    func testMultiColumnWithHeaderWithConfiguredHeavyTripleDashBorders() throws {
        let col1 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col1",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )
        let col2 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col2",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )
        let col3 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col3",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )

        let cols = TableColumn.configureBorders(in: [col1, col2, col3], uniformStyle: .heavyTripleDash)

        let table = Table(columns: cols) {
            "cell1"
            "cell2"
            "cell3"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            ┏┅┅┅┅┅┅┅┳┅┅┅┅┅┅┅┳┅┅┅┅┅┅┅┓
            ┇ ..... ┇ ..... ┇ ..... ┇
            ┇ col1. ┇ col2. ┇ col3. ┇
            ┇ ..... ┇ ..... ┇ ..... ┇
            ┇ ..... ┇ ..... ┇ ..... ┇
            ┣┅┅┅┅┅┅┅╋┅┅┅┅┅┅┅╋┅┅┅┅┅┅┅┫
            ┇ cell1 ┇ cell2 ┇ cell3 ┇
            ┗┅┅┅┅┅┅┅┻┅┅┅┅┅┅┅┻┅┅┅┅┅┅┅┛
            """
        )
    }

    func testMultiColumnWithHeaderWithConfiguredLightTripleDashBorders() throws {
        let col1 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col1",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )
        let col2 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col2",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )
        let col3 = TableColumn(
            header: TableColumn.Header(
                fillCharacter: ".",
                title: "col3",
                verticalPadding: .init(top: 1, bottom: 2)
            ),
            horizontalAlignment: .leading
        )

        let cols = TableColumn.configureBorders(
            in: [col1, col2, col3],
            uniformStyle: .lightTripleDash,
            horizontalMargin: "  "
        )

        let table = Table(columns: cols) {
            "cell1"
            "cell2"
            "cell3"
        }
        let output = table.stringValue
        XCTAssertEqual(
            output,
            """
            ┌┄┄┄┄┄┄┄┄┄┬┄┄┄┄┄┄┄┄┄┬┄┄┄┄┄┄┄┄┄┐
            ┆  .....  ┆  .....  ┆  .....  ┆
            ┆  col1.  ┆  col2.  ┆  col3.  ┆
            ┆  .....  ┆  .....  ┆  .....  ┆
            ┆  .....  ┆  .....  ┆  .....  ┆
            ├┄┄┄┄┄┄┄┄┄┼┄┄┄┄┄┄┄┄┄┼┄┄┄┄┄┄┄┄┄┤
            ┆  cell1  ┆  cell2  ┆  cell3  ┆
            └┄┄┄┄┄┄┄┄┄┴┄┄┄┄┄┄┄┄┄┴┄┄┄┄┄┄┄┄┄┘
            """
        )
    }

}
