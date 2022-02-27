public struct ForEach: TextDisplay {
    var content: [TextDisplay]

    public init<Source: Sequence>(_ source: Source, @ForEachBuilder content: (Source.Element) -> [TextDisplay]) {
        self.content = source.flatMap(content)
    }

    public var stringValue: String {
        ""
    }
}
