public enum TableBorderStyle {
    case double
    case heavy
    case heavyQuadrupleDash
    case heavyTripleDash
    case light
    case lightQuadrupleDash
    case lightTripleDash

    var horizontal: Character {
        switch self {
        case .double: return .boxDraw.doubleHorizontal
        case .heavy: return .boxDraw.heavyHorizontal
        case .heavyQuadrupleDash: return .boxDraw.heavyQuadrupleDashHorizontal
        case .heavyTripleDash: return .boxDraw.heavyTripleDashHorizontal
        case .light: return .boxDraw.lightHorizontal
        case .lightQuadrupleDash: return .boxDraw.lightQuadrupleDashHorizontal
        case .lightTripleDash: return .boxDraw.lightTripleDashHorizontal
        }
    }

    var vertical: Character {
        switch self {
        case .double: return .boxDraw.doubleVertical
        case .heavy: return .boxDraw.heavyVertical
        case .heavyQuadrupleDash: return .boxDraw.heavyQuadrupleDashVertical
        case .heavyTripleDash: return .boxDraw.heavyTripleDashVertical
        case .light: return .boxDraw.lightVertical
        case .lightQuadrupleDash: return .boxDraw.lightQuadrupleDashVertical
        case .lightTripleDash: return .boxDraw.lightTripleDashVertical
        }
    }

    var downAndLeft: Character {
        switch self {
        case .double: return .boxDraw.doubleDownAndLeft
        case .heavy: return .boxDraw.heavyDownAndLeft
        case .heavyQuadrupleDash: return .boxDraw.heavyDownAndLeft
        case .heavyTripleDash: return .boxDraw.heavyDownAndLeft
        case .light: return .boxDraw.lightDownAndLeft
        case .lightQuadrupleDash: return .boxDraw.lightDownAndLeft
        case .lightTripleDash: return .boxDraw.lightDownAndLeft
        }
    }

    var downAndRight: Character {
        switch self {
        case .double: return .boxDraw.doubleDownAndRight
        case .heavy: return .boxDraw.heavyDownAndRight
        case .heavyQuadrupleDash: return .boxDraw.heavyDownAndRight
        case .heavyTripleDash: return .boxDraw.heavyDownAndRight
        case .light: return .boxDraw.lightDownAndRight
        case .lightQuadrupleDash: return .boxDraw.lightDownAndRight
        case .lightTripleDash: return .boxDraw.lightDownAndRight
        }
    }

    var upAndLeft: Character {
        switch self {
        case .double: return .boxDraw.doubleUpAndLeft
        case .heavy: return .boxDraw.heavyUpAndLeft
        case .heavyQuadrupleDash: return .boxDraw.heavyUpAndLeft
        case .heavyTripleDash: return .boxDraw.heavyUpAndLeft
        case .light: return .boxDraw.lightUpAndLeft
        case .lightQuadrupleDash: return .boxDraw.lightUpAndLeft
        case .lightTripleDash: return .boxDraw.lightUpAndLeft
        }
    }

    var upAndRight: Character {
        switch self {
        case .double: return .boxDraw.doubleUpAndRight
        case .heavy: return .boxDraw.heavyUpAndRight
        case .heavyQuadrupleDash: return .boxDraw.heavyUpAndRight
        case .heavyTripleDash: return .boxDraw.heavyUpAndRight
        case .light: return .boxDraw.lightUpAndRight
        case .lightQuadrupleDash: return .boxDraw.lightUpAndRight
        case .lightTripleDash: return .boxDraw.lightUpAndRight
        }
    }

    var upAndHorizontal: Character {
        switch self {
        case .double: return .boxDraw.doubleUpAndHorizontal
        case .heavy: return .boxDraw.heavyUpAndHorizontal
        case .heavyQuadrupleDash: return .boxDraw.heavyUpAndHorizontal
        case .heavyTripleDash: return .boxDraw.heavyUpAndHorizontal
        case .light: return .boxDraw.lightUpAndHorizontal
        case .lightQuadrupleDash: return .boxDraw.lightUpAndHorizontal
        case .lightTripleDash: return .boxDraw.lightUpAndHorizontal
        }
    }

    var downAndHorizontal: Character {
        switch self {
        case .double: return .boxDraw.doubleDownAndHorizontal
        case .heavy: return .boxDraw.heavyDownAndHorizontal
        case .heavyQuadrupleDash: return .boxDraw.heavyDownAndHorizontal
        case .heavyTripleDash: return .boxDraw.heavyDownAndHorizontal
        case .light: return .boxDraw.lightDownAndHorizontal
        case .lightQuadrupleDash: return .boxDraw.lightDownAndHorizontal
        case .lightTripleDash: return .boxDraw.lightDownAndHorizontal
        }
    }

    var verticalAndLeft: Character {
        switch self {
        case .double: return .boxDraw.doubleVerticalAndLeft
        case .heavy: return .boxDraw.heavyVerticalAndLeft
        case .heavyQuadrupleDash: return .boxDraw.heavyVerticalAndLeft
        case .heavyTripleDash: return .boxDraw.heavyVerticalAndLeft
        case .light: return .boxDraw.lightVerticalAndLeft
        case .lightQuadrupleDash: return .boxDraw.lightVerticalAndLeft
        case .lightTripleDash: return .boxDraw.lightVerticalAndLeft
        }
    }

    var verticalAndRight: Character {
        switch self {
        case .double: return .boxDraw.doubleVerticalAndRight
        case .heavy: return .boxDraw.heavyVerticalAndRight
        case .heavyQuadrupleDash: return .boxDraw.heavyVerticalAndRight
        case .heavyTripleDash: return .boxDraw.heavyVerticalAndRight
        case .light: return .boxDraw.lightVerticalAndRight
        case .lightQuadrupleDash: return .boxDraw.lightVerticalAndRight
        case .lightTripleDash: return .boxDraw.lightVerticalAndRight
        }
    }

    var verticalAndHorizontal: Character {
        switch self {
        case .double: return .boxDraw.doubleVerticalAndHorizontal
        case .heavy: return .boxDraw.heavyVerticalAndHorizontal
        case .heavyQuadrupleDash: return .boxDraw.heavyVerticalAndHorizontal
        case .heavyTripleDash: return .boxDraw.heavyVerticalAndHorizontal
        case .light: return .boxDraw.lightVerticalAndHorizontal
        case .lightQuadrupleDash: return .boxDraw.lightVerticalAndHorizontal
        case .lightTripleDash: return .boxDraw.lightVerticalAndHorizontal
        }
    }
}

extension TableColumn {
    public static func configureBorders(
        in columns: inout [TableColumn],
        uniformStyle style: TableBorderStyle,
        horizontalMargin: String = " "
    ) {
        guard !columns.isEmpty else { return }
        let multipleColumns = columns.count > 1
        columns[0].leadingMargin = "\(style.vertical)\(horizontalMargin)"
        columns[0].trailingMargin = "\(horizontalMargin)\(style.vertical)"
        columns[0].footer = .init(
            border: style.horizontal,
            leadingCorner: style.upAndRight,
            trailingCorner: multipleColumns ? style.upAndHorizontal : style.upAndLeft
        )
        columns[0].header?.bottomBorder = style.horizontal
        columns[0].header?.topBorder = style.horizontal
        columns[0].header?.leadingMargin = "\(style.vertical)\(horizontalMargin)"
        columns[0].header?.trailingMargin = "\(horizontalMargin)\(style.vertical)"
        columns[0].header?.corners = .init(
            topLeading: style.downAndRight,
            topTrailing: multipleColumns ? style.downAndHorizontal : style.downAndLeft,
            bottomTrailing: multipleColumns ? style.verticalAndHorizontal : style.upAndLeft,
            bottomLeading: style.verticalAndRight
        )

        let lastIndex = columns.endIndex.advanced(by: -1)
        guard lastIndex > 0 else { return }

        for index in 1 ..< lastIndex {
            columns[index].leadingMargin = horizontalMargin
            columns[index].trailingMargin = "\(horizontalMargin)\(style.vertical)"
            columns[index].footer = .init(
                border: style.horizontal,
                leadingCorner: nil,
                trailingCorner: style.upAndHorizontal
            )
            columns[index].header?.bottomBorder = style.horizontal
            columns[index].header?.topBorder = style.horizontal
            columns[index].header?.leadingMargin = horizontalMargin
            columns[index].header?.trailingMargin = "\(horizontalMargin)\(style.vertical)"
            columns[index].header?.corners = .init(
                topLeading: style.horizontal,
                topTrailing: style.downAndHorizontal,
                bottomTrailing: style.verticalAndHorizontal,
                bottomLeading: style.horizontal
            )
        }

        columns[lastIndex].leadingMargin = horizontalMargin
        columns[lastIndex].trailingMargin = "\(horizontalMargin)\(style.vertical)"
        columns[lastIndex].footer = .init(
            border: style.horizontal,
            leadingCorner: style.horizontal,
            trailingCorner: style.upAndLeft
        )
        columns[lastIndex].header?.bottomBorder = style.horizontal
        columns[lastIndex].header?.topBorder = style.horizontal
        columns[lastIndex].header?.leadingMargin = horizontalMargin
        columns[lastIndex].header?.trailingMargin = "\(horizontalMargin)\(style.vertical)"
        columns[lastIndex].header?.corners = .init(
            topLeading: style.horizontal,
            topTrailing: style.downAndLeft,
            bottomTrailing: style.verticalAndLeft,
            bottomLeading: style.horizontal
        )
    }

    public static func configureBorders(
        in columns: [TableColumn],
        uniformStyle style: TableBorderStyle,
        horizontalMargin: String = " "
    ) -> [TableColumn] {
        var cols = columns
        self.configureBorders(in: &cols, uniformStyle: style, horizontalMargin: horizontalMargin)
        return cols
    }

    public static func configureBorders(
        in columns: inout [TableColumn],
        internalOnlyUniformStyle style: TableBorderStyle,
        horizontalMargin: String = " "
    ) {
        guard !columns.isEmpty else { return }
        let multipleColumns = columns.count > 1
        columns[0].leadingMargin = horizontalMargin
        columns[0].trailingMargin = "\(horizontalMargin)\(style.vertical)"
        columns[0].footer = nil
        columns[0].header?.bottomBorder = style.horizontal
        columns[0].header?.topBorder = nil
        columns[0].header?.leadingMargin = horizontalMargin
        columns[0].header?.trailingMargin = "\(horizontalMargin)\(style.vertical)"
        columns[0].header?.corners = .init(
            topLeading: nil,
            topTrailing: nil,
            bottomTrailing: multipleColumns ? style.verticalAndHorizontal : style.upAndLeft,
            bottomLeading: nil
        )

        let lastIndex = columns.endIndex.advanced(by: -1)
        guard lastIndex > 0 else { return }

        for index in 1 ..< lastIndex {
            columns[index].leadingMargin = "\(horizontalMargin)"
            columns[index].trailingMargin = "\(horizontalMargin)\(style.vertical)"
            columns[index].footer = nil
            columns[index].header?.bottomBorder = style.horizontal
            columns[index].header?.topBorder = nil
            columns[index].header?.leadingMargin = "\(horizontalMargin)"
            columns[index].header?.trailingMargin = "\(horizontalMargin)\(style.vertical)"
            columns[index].header?.corners = .init(
                topLeading: nil,
                topTrailing: nil,
                bottomTrailing: style.verticalAndHorizontal,
                bottomLeading: style.horizontal
            )
        }

        columns[lastIndex].leadingMargin = "\(horizontalMargin)"
        columns[lastIndex].trailingMargin = horizontalMargin
        columns[lastIndex].footer = nil
        columns[lastIndex].header?.bottomBorder = style.horizontal
        columns[lastIndex].header?.topBorder = nil
        columns[lastIndex].header?.leadingMargin = horizontalMargin
        columns[lastIndex].header?.trailingMargin = horizontalMargin
        columns[lastIndex].header?.corners = .init(
            topLeading: nil,
            topTrailing: nil,
            bottomTrailing: nil,
            bottomLeading: style.horizontal
        )
    }

    public static func configureBorders(
        in columns: [TableColumn],
        internalOnlyUniformStyle style: TableBorderStyle,
        horizontalMargin: String = " "
    ) -> [TableColumn] {
        var cols = columns
        self.configureBorders(in: &cols, internalOnlyUniformStyle: style, horizontalMargin: horizontalMargin)
        return cols
    }
}
