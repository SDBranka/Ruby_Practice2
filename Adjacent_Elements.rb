=begin
Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.

Example

For inputArray = [3, 6, -2, -5, 7, 3], the output should be
adjacentElementsProduct(inputArray) = 21.

7 and 3 produce the largest product.

Input/Output

    [time limit] 4000ms (rb)

    [input] array.integer inputArray

    An array of integers containing at least two elements.

    Guaranteed constraints:
    2 ≤ inputArray.length ≤ 10,
    -1000 ≤ inputArray[i] ≤ 1000.

    [output] integer

    The largest product of adjacent element
=end


def adjacentElementsProduct(inputArray)
  idx1=0
  largest=-9999999999999999999999999
  idx2=1
  while idx2<inputArray.length
#    puts inputArray[idx1]*inputArray[idx2]
#    puts "\n"
    if inputArray[idx1]*inputArray[idx2]>largest
      largest=inputArray[idx1]*inputArray[idx2]
    end    
    idx1+=1
    idx2+=1
  end
  return largest
end

##inputArray: [3, 6, -2, -5, 7, 3]
#
inputArray= [-23,4,-3,8,-12]

puts adjacentElementsProduct(inputArray)
puts "\n"
##puts adjacentElementsProduct(1,1,1,7,2,1,1,1)




