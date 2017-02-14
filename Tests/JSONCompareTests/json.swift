import Foundation

func json(fromFile file: String) -> Any? {
  let url = URL(fileURLWithPath: "Tests/JSONCompareTests/JSON/\(file).json")
  let data = try! Data(contentsOf: url)
  return try! JSONSerialization.jsonObject(with: data, options: [])
}
