import UIKit

var count = 1019000000
let mil = 1000
let milhao = mil * 1000
let bilhao = milhao * 1000

switch count {
case mil..<milhao:
    print(String(format: "%.1fK", Double(count) / Double(mil)))
case milhao..<bilhao:
    print(String(format: "%.1 M", Double(count) / Double(milhao)))
case bilhao..<Int.max:
    print(String(format: "%.1fB", Double(count) / Double(bilhao)))
default:
    print(String(count))
}
