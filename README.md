# JSONCompare

Compare one dictionary with another (Equatable && diffs)

## Roadmap

### v1.0.0: Equatable

```swift
let jsonValue = json(fromFile: "root_object")
/** root_object.json
 {
   "title": "JSONCompare",
   "isOpensource": true,
   "stars": 999,
   "versions": [
     "v1.0.0: Equatable",
     "v2.0.0: Diff"
   ]
 }
*/

let expected: JSON = .object([
   "title": .string("JSONCompare"),
   "isOpensource": .bool(true),
   "stars": .number(999),
   "versions": .array([
     .string("v1.0.0: Equatable"),
     .string("v2.0.0: Diff"),
   ])
])

print(JSON(jsonValue) == expected) // => true
```

### v2.0.0: Diff

```swift
JSON.diff(
  .array([.string("a")],
  .array([.string("b")]
)
/** =>
  .diff(
    [
      .added(.array([.string("b")])),
      .deleted(.array([.string("a")])),
    ]
*/
```
