import UIKit

//MARK: find the XOR result of array elements

var price = [3, 9, 12, 13, 15]
var xorResult = 0

for data in price {
  xorResult = xorResult ^ data
}


print(xorResult)
