# Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
def join_ingredients(src)
  
  new_array = []
  
  new_array.push("I love #{src[0][0]} and #{src[0][1]} on my pizza")
  new_array.push("I love #{src[1][0]} and #{src[1][1]} on my pizza")
  new_array.push("I love #{src[2][0]} and #{src[2][1]} on my pizza")
   

  new_array
end

 # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
def find_greater_pair(src)
  new_array = []
  i = 0
  while i < src.length do
    new_array.push(src[i].max)
    i += 1
 end
 new_array
end

# src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
def total_even_pairs(src)
  new_array = []
  d = 0
  while d < src.length do 
    if src[d][0] % 2 == 0 && src[d][1] % 2 == 0
     new_array.push((src[d][0] + src[d][1]))
     total = new_array.sum
    end
    d += 1
  end
  total
end
