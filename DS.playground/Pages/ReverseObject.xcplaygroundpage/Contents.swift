//: [Previous](@previous)


//MARK: Reverse a string or array with genric func
import Foundation
import UIKit
var str = "Playground"


func reverseStringOrArray<T>(obj: T, count: Int) -> T {
  var right = count
  var left = 0
  var result = obj
  while left < right {

    Swap(left: &obj[left], right: &right)
    left += 1
    right -= 1
  }
  return result
}

func Swap<T>(left:inout T, right: inout T){
  let temp = left
  left = right
  right = temp
}

print(reverseStringOrArray(obj: str, count: str.count - 1))

public extension String {
  subscript(value: Int) -> Character {
    self[index(ofAccessibilityElement: value)]
  }
}

func recusrion(value: Int) -> Int {
  if value > 0 {
    
    return recusrion(value: value - 1) + value
  }
  
  return 0
}

print(recusrion(value: 5))

//: [Next](@next)
