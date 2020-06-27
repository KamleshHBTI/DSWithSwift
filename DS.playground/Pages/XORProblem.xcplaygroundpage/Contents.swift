import UIKit

var price = [3, 9, 12, 13, 15]
var xorResult = 0

for data in price {
  xorResult = xorResult ^ data
}


print(xorResult)
