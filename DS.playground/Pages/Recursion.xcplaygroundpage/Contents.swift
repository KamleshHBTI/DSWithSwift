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


//MARK: Indirect recursion: A func is calling B func and B func is calling A func so this is called Indirect function


func indirectRecursionA(n: Int) {
  
  if n>0 {
    print(n)
    indirectRecursionB(n: n - 1)
  }
}

func indirectRecursionB(n:Int){
  if n>0 {
    print(n)
    indirectRecursionB(n: n/2)
  }
}


//MARK: Nested Recursion: A recursion function is called by a recursive function which have peramter as recirsive function itself.


func nestedRecursion(n: Int) -> Int {
  if n > 100 {
    print(n)
    return n - 10
  }else {
   return nestedRecursion(n: nestedRecursion(n: n + 11))
  }
}

nestedRecursion(n: 95)




//MARK: sum of n natural number program
// Sum(n) = 1+2+3+4.......(n-1)+n
// Sum(n) = Sum(n-1) + n so we can find this sum with recursive function.


func sumOfNaturalNumber(n: Int) -> Int {
  
  if n == 0 {
    return 0
  }else {
   return sumOfNaturalNumber(n: n - 1) + n
  }
}


print("Sum of n natural number is", sumOfNaturalNumber(n: 10))
//Time Complexity o(n)
//Spcae Complexity o(n)



//MARK: There is also formula of sum n natural is n(n+1)/2. So you can use dircet this formula for result or without using recursive function.
func SumOfNaturalNumbers(n: Int) -> Int {
  
  return n*(n+1)/2
}
print("Sum of n natural number with formula", SumOfNaturalNumbers(n: 10))
//Time Complexity o(1)
//Spcae Complexity o(1)


//MARK: We can also find out sum of n natural number with iteratively

func SumOfNaturalNumberWithForLoop(n: Int) {
  var sum = 0
  var number = n
  while number>0 {
    sum = sum + number
    number -=  1
  }
  print("SumOfNaturalNumberWithForLoop", sum)
}

SumOfNaturalNumberWithForLoop(n: 10)
//Time Complexity o(n)
//Spcae Complexity o(1)

//: [Next](@next)
