public enum HorizontalAlignment {
    case leading
    case center
    case trailing

    func apply(text: [Substring], width: Int, fillCharacter: Character) -> [String] {
        text
            .map { line -> String in
                let length = line.count
                guard length < width else { return String(line) }
                let pad = width - length
                switch self {
                case .leading:
                    return line + String(repeating: fillCharacter, count: pad)
                case .center:
                    let leftPad = Int(Double(pad) / 2.0)
                    let rightPad = leftPad * 2 < pad ? leftPad + 1 : leftPad
                    let left = String(repeating: fillCharacter, count: leftPad)
                    let right = String(repeating: fillCharacter, count: rightPad)
                    return "\(left)\(line)\(right)"
                case .trailing:
                    return String(repeating: fillCharacter, count: pad) + line
                }
            }
    }
}

public enum VerticalAlignment {
    case top
    case middle
    case bottom

    func apply(text: [Substring], height: Int) -> [Substring] {
        guard text.count < height else { return text }
        let emptySub = ""[...]
        let pad = height - text.count
        switch self {
        case .top:
            return text + [Substring](repeating: emptySub, count: pad)
        case .middle:
            let topPad = Int(Double(pad) / 2.0)
            let bottomPad = topPad * 2 < pad ? topPad + 1 : topPad
            return (
                [Substring](repeating: emptySub, count: topPad) +
                    text +
                    [Substring](repeating: emptySub, count: bottomPad)
            )
        case .bottom:
            return [Substring](repeating: emptySub, count: pad) + text
        }
    }
}
