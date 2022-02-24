public protocol TextDisplay {
    var stringValue: String { get }
}

extension TextDisplay where Self: CustomStringConvertible {
    public var stringValue: String {
        String(describing: self)
    }
}
