public struct TableColumn {
    public struct Header {
        public var bottomBorder: Character?
        public var corners: Corners
        public var fillCharacter: Character
        public var horizontalAlignment: HorizontalAlignment
        public var leadingMargin: String
        public var minHeight: Int
        public var title: String
        public var topBorder: Character?
        public var trailingMargin: String
        public var verticalAlignment: VerticalAlignment
        public var verticalPadding: VerticalPadding

        public init(
            bottomBorder: Character? = nil,
            corners: TableColumn.Corners = .defaults,
            fillCharacter: Character = " ",
            horizontalAlignment: HorizontalAlignment = .center,
            leadingMargin: String = "",
            minHeight: Int = 0,
            title: String,
            topBorder: Character? = nil,
            trailingMargin: String = "",
            verticalAlignment: VerticalAlignment = .middle,
            verticalPadding: VerticalPadding = .zero
        ) {
            self.bottomBorder = bottomBorder
            self.corners = corners
            self.fillCharacter = fillCharacter
            self.horizontalAlignment = horizontalAlignment
            self.leadingMargin = leadingMargin
            self.minHeight = minHeight
            self.title = title
            self.topBorder = topBorder
            self.trailingMargin = trailingMargin
            self.verticalAlignment = verticalAlignment
            self.verticalPadding = verticalPadding
        }
    }

    public struct Corners {
        public var topLeading: Character?
        public var topTrailing: Character?
        public var bottomTrailing: Character?
        public var bottomLeading: Character?

        public static let defaults = Corners(topLeading: nil, topTrailing: nil, bottomTrailing: nil, bottomLeading: nil)

        public init(
            topLeading: Character? = nil,
            topTrailing: Character? = nil,
            bottomTrailing: Character? = nil,
            bottomLeading: Character? = nil
        ) {
            self.topLeading = topLeading
            self.topTrailing = topTrailing
            self.bottomTrailing = bottomTrailing
            self.bottomLeading = bottomLeading
        }
    }

    public struct VerticalPadding: Equatable {
        public var top: Int
        public var bottom: Int

        public init(top: Int, bottom: Int) {
            self.top = top
            self.bottom = bottom
        }

        public var total: Int { self.top + self.bottom }

        public static let zero = VerticalPadding(top: 0, bottom: 0)
    }

    public var fillCharacter: Character
    public var header: Header?
    public var horizontalAlignment: HorizontalAlignment
    public var leadingMargin: String
    public var minWidth: Int
    public var trailingMargin: String
    public var verticalAlignment: VerticalAlignment
    public var verticalPadding: VerticalPadding

    public init(
        fillCharacter: Character = " ",
        header: TableColumn.Header? = nil,
        horizontalAlignment: HorizontalAlignment = .leading,
        leadingMargin: String = "",
        minWidth: Int = 0,
        trailingMargin: String = "",
        verticalAlignment: VerticalAlignment = .middle,
        verticalPadding: VerticalPadding = .zero
    ) {
        self.fillCharacter = fillCharacter
        self.header = header
        self.horizontalAlignment = horizontalAlignment
        self.leadingMargin = leadingMargin
        self.minWidth = minWidth
        self.trailingMargin = trailingMargin
        self.verticalAlignment = verticalAlignment
        self.verticalPadding = verticalPadding
    }
}

extension TableColumn.Header {
    var decorationHeight: Int {
        (self.bottomBorder != nil ? 1 : 0) + (self.topBorder != nil ? 1 : 0) + self.verticalPadding.total
    }
}

extension TableColumn.VerticalPadding {
    func apply(lines: [Substring]) -> [Substring] {
        guard self != Self.zero else { return lines }
        return (
            [Substring](repeating: ""[...], count: self.top) +
                lines +
                [Substring](repeating: ""[...], count: self.bottom)
        )
    }
}
