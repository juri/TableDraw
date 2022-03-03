@resultBuilder
public enum TableDisplayBuilder {
    public typealias Component = [TextDisplay]
    public typealias Expression = TextDisplay

    public static func buildBlock(_ components: Component...) -> Component {
        components.flatMap { (tds: [TextDisplay]) -> [TextDisplay] in
            tds.flatMap { td -> [TextDisplay] in
                switch td {
                case let forEach as ForEach:
                    return forEach.content
                default:
                    return [td]
                }
            }
        }
    }

    public static func buildBlock(_ components: Expression...) -> Component {
        components.flatMap { td -> [TextDisplay] in
            switch td {
            case let forEach as ForEach:
                return forEach.content
            default:
                return [td]
            }
        }
    }

    public static func buildBlock() -> Component {
        []
    }

    public static func buildExpression(_ expression: Expression) -> TableDisplayBuilder.Component {
        [expression]
    }

    public static func buildOptional(_ component: Component?) -> Component {
        guard let component = component else { return [] }
        return component
    }
}

public struct Group<Content> where Content: TextDisplay {
    let children: [Content]
}

extension Group: TextDisplay {
    public var stringValue: String {
        self.children.map(\.stringValue).joined()
    }
}
