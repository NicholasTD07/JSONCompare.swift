import Foundation

public enum JSON {
    case array([JSON])
    case object([String: JSON])
    case string(String)
    case number(NSNumber)
    case bool(Bool)
    case null
}

public extension JSON {
    init(_ json: Any) {
        switch json {
        case let value as [Any]:
            self = .array(value.map(JSON.init))
        case let value as [String: Any]:
            self = .object(value.map(JSON.init))
        case let value as String:
            self = .string(value)
        case let value as NSNumber:
            if value.isBool() {
                self = .bool(value.boolValue)
            } else {
                self = .number(value)
            }
        default:
            self = .null
        }
    }
}
