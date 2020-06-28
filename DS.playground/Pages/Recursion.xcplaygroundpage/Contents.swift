//: [Previous](@previous)


import Foundation
import UIKit

//MARK: Recusrion func in  swift

func recusrion(value: Int) -> Int {
  if value > 0 {
    return recusrion(value: value - 1) + value
  }
  return 0
}
print("tail recursion is: ", recusrion(value: 6))


//MARK: Tail Recursion or a recursion which not return anything or at last again calling a method

func tailRecursion(value: Int) {
  
  while value > 0 {
    print(value)
    tailRecursion(value: value - 1)
  }
}




//MARK: Head Recursion: If a recursive function calling itself and that recursive call is the first statement in the function then it's known as Head Recursion. There's no statement, no operation before the call.

func headRecursion(value: Int) {
  if value > 0 {
  headRecursion(value: value - 1)
    print(value)
  }
  
}
print(headRecursion(value: 4))





//MARK:Tree Recursion or function which calling more then one time same func or recursion called tree recursion.


func treeRecursion(value: Int) {
  
  if value > 0 {
    print(value)
      treeRecursion(value: value - 1)
      treeRecursion(value: value - 1)
  }
}

print(treeRecursion(value: 5))






//: [Next](@next)
