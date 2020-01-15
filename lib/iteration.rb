def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  love_pizza_toppings = []
  index = 0
    while src[index] do
      pizza_string = "I love #{src[index][0]} and #{src[index][1]} on my pizza"
      love_pizza_toppings << pizza_string
      index += 1
    end
  love_pizza_toppings
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  greater_numbers = []
  outter_index = 0
  while src[outter_index] do
    if src[outter_index][1] > src[outter_index][0]
      greater_numbers << src[outter_index][1]
    else
      greater_numbers << src[outter_index][0]
    end
    outter_index += 1
  end
  greater_numbers
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total_even_pairs = 0
  outter_index = 0
  while src[outter_index] do
    if src[outter_index][0].even? && src[outter_index][1].even?
      total_even_pairs += (src[outter_index][0] + src[outter_index][1])
    end
    outter_index += 1
  end
  total_even_pairs
end
