//: [Previous](@previous)

import Foundation
import UIKit
//MARK: Swap all zero elements one side using two pointers or with O(N) complexity

var arr = [8, 9, 0, 1, 2, 0, 3]
var zeroPointer = 0

for (i, _) in arr.enumerated() {
  
  if(arr[i] != 0 && arr[zeroPointer] == 0)  {
       let temp = arr[i];
       arr[i] = arr[zeroPointer];
       arr[zeroPointer] = temp;
      }
  
  if(arr[zeroPointer] != 0){
      zeroPointer += 1;
  }
  
}

print(arr)

//: [Next](@next)
