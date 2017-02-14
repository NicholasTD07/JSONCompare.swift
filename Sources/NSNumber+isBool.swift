import Foundation

extension NSNumber {
    func isBool() -> Bool {
        return type(of: self) == type(of: NSNumber(value: true))
    }
}
