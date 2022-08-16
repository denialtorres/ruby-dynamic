# given an array of integers return an array of integers such that value at index i
# is the product of everything in the input except the input value at index i
# an empty list should return 1, a list with length should return [1] no mather what the imput element is
require 'pry'

array = [2, 3, 4, 5]


def product_exclusion(array)
  return 1 if array.empty?
  return [1] if array.size == 1

  array_of_products = []

  array.each_with_index do |element, index|
   remain = array.reject.each_with_index{|i, indx| [index].include? indx}

   array_of_products.push(remain.inject(:*))
  end

  array_of_products
end

pp product_exclusion(array)
