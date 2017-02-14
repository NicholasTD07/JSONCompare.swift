extension JSON: Equatable {
    public static func == (l: JSON, r: JSON) -> Bool {
        switch (l, r) {
        case let (.string(l), .string(r)): return l == r
        case let (.array(l), .array(r)): return l == r
        case (.null, .null): return true
        default: return false
        }
    }
}
