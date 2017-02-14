public enum JSON {
    case array([JSON])
    case string(String)
    case null
}

public extension JSON {
    init(_ json: Any) {
        switch json {
        case let value as [Any]:
            self = .array(value.map(JSON.init))
        case let value as String:
            self = .string(value)
        default:
            self = .null
        }
    }
}
