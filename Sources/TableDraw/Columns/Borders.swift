public enum TableBorderStyle {
    case double
    case heavy
    case light

    var horizontal: Character {
        switch self {
        case .double: return .boxDraw.doubleHorizontal
        case .heavy: return .boxDraw.heavyHorizontal
        case .light: return .boxDraw.lightHorizontal
        }
    }

    var vertical: Character {
        switch self {
        case .double: return .boxDraw.doubleVertical
        case .heavy: return .boxDraw.heavyVertical
        case .light: return .boxDraw.lightVertical
        }
    }

    var downAndLeft: Character {
        switch self {
        case .double: return .boxDraw.doubleDownAndLeft
        case .heavy: return .boxDraw.heavyDownAndLeft
        case .light: return .boxDraw.lightDownAndLeft
        }
    }

    var downAndRight: Character {
        switch self {
        case .double: return .boxDraw.doubleDownAndRight
        case .heavy: return .boxDraw.heavyDownAndRight
        case .light: return .boxDraw.lightDownAndRight
        }
    }

    var upAndLeft: Character {
        switch self {
        case .double: return .boxDraw.doubleUpAndLeft
        case .heavy: return .boxDraw.heavyUpAndLeft
        case .light: return .boxDraw.lightUpAndLeft
        }
    }

    var upAndRight: Character {
        switch self {
        case .double: return .boxDraw.doubleUpAndRight
        case .heavy: return .boxDraw.heavyUpAndRight
        case .light: return .boxDraw.lightUpAndRight
        }
    }

    var upAndHorizontal: Character {
        switch self {
        case .double: return .boxDraw.doubleUpAndHorizontal
        case .heavy: return .boxDraw.heavyUpAndHorizontal
        case .light: return .boxDraw.lightUpAndHorizontal
        }
    }

    var downAndHorizontal: Character {
        switch self {
        case .double: return .boxDraw.doubleDownAndHorizontal
        case .heavy: return .boxDraw.heavyDownAndHorizontal
        case .light: return .boxDraw.lightDownAndHorizontal
        }
    }

    var verticalAndLeft: Character {
        switch self {
        case .double: return .boxDraw.doubleVerticalAndLeft
        case .heavy: return .boxDraw.heavyVerticalAndLeft
        case .light: return .boxDraw.lightVerticalAndLeft
        }
    }

    var verticalAndRight: Character {
        switch self {
        case .double: return .boxDraw.doubleVerticalAndRight
        case .heavy: return .boxDraw.heavyVerticalAndRight
        case .light: return .boxDraw.lightVerticalAndRight
        }
    }

    var verticalAndHorizontal: Character {
        switch self {
        case .double: return .boxDraw.doubleVerticalAndHorizontal
        case .heavy: return .boxDraw.heavyVerticalAndHorizontal
        case .light: return .boxDraw.lightVerticalAndHorizontal
        }
    }
}

extension TableColumn {
    public static func configureBorders(
        in columns: inout [TableColumn],
        uniformStyle style: TableBorderStyle
    ) {
        guard !columns.isEmpty else { return }
        let multipleColumns = columns.count > 1
        columns[0].leadingMargin = "\(style.vertical) "
        columns[0].trailingMargin = " \(style.vertical)"
        columns[0].footer = .init(
            border: style.horizontal,
            leadingCorner: style.upAndRight,
            trailingCorner: multipleColumns ? style.upAndHorizontal : style.upAndLeft
        )
        columns[0].header?.bottomBorder = style.horizontal
        columns[0].header?.topBorder = style.horizontal
        columns[0].header?.leadingMargin = "\(style.vertical) "
        columns[0].header?.trailingMargin = " \(style.vertical)"
        columns[0].header?.corners = .init(
            topLeading: style.downAndRight,
            topTrailing: multipleColumns ? style.downAndHorizontal : style.downAndLeft,
            bottomTrailing: multipleColumns ? style.verticalAndHorizontal : style.upAndLeft,
            bottomLeading: style.verticalAndRight
        )

        let lastIndex = columns.endIndex.advanced(by: -1)
        guard lastIndex > 0 else { return }

        for index in 1 ..< lastIndex {
            columns[index].leadingMargin = " "
            columns[index].trailingMargin = " \(style.vertical)"
            columns[index].footer = .init(
                border: style.horizontal,
                leadingCorner: nil,
                trailingCorner: style.upAndHorizontal
            )
            columns[index].header?.bottomBorder = style.horizontal
            columns[index].header?.topBorder = style.horizontal
            columns[index].header?.leadingMargin = " "
            columns[index].header?.trailingMargin = " \(style.vertical)"
            columns[index].header?.corners = .init(
                topLeading: style.horizontal,
                topTrailing: style.downAndHorizontal,
                bottomTrailing: style.verticalAndHorizontal,
                bottomLeading: style.horizontal
            )
        }

        columns[lastIndex].leadingMargin = " "
        columns[lastIndex].trailingMargin = " \(style.vertical)"
        columns[lastIndex].footer = .init(
            border: style.horizontal,
            leadingCorner: style.horizontal,
            trailingCorner: style.upAndLeft
        )
        columns[lastIndex].header?.bottomBorder = style.horizontal
        columns[lastIndex].header?.topBorder = style.horizontal
        columns[lastIndex].header?.leadingMargin = " "
        columns[lastIndex].header?.trailingMargin = " \(style.vertical)"
        columns[lastIndex].header?.corners = .init(
            topLeading: style.horizontal,
            topTrailing: style.downAndLeft,
            bottomTrailing: style.verticalAndLeft,
            bottomLeading: style.horizontal
        )
    }

    public static func configureBorders(
        in columns: [TableColumn],
        uniformStyle style: TableBorderStyle
    ) -> [TableColumn] {
        var cols = columns
        configureBorders(in: &cols, uniformStyle: style)
        return cols
    }
}
