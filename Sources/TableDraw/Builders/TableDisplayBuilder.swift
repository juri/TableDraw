@resultBuilder
public enum TableDisplayBuilder {
    public static func buildBlock(_ components: TextDisplay...) -> [TextDisplay] {
        components.flatMap { td -> [TextDisplay] in
            switch td {
            case let forEach as ForEach:
                return forEach.content
            default:
                return [td]
            }
        }
    }

    public static func buildBlock(_ components: ForEach...) -> [TextDisplay] {
        components.flatMap(\.content)
    }
}
