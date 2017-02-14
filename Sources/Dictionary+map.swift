internal extension Dictionary {
    func map<T>(_ f: (Value) -> T) -> [Key: T] {
        var acc = Dictionary<Key, T>(minimumCapacity: count)

        for (key, value) in self {
            acc[key] = f(value)
        }

        return acc
    }
}
