# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

class EulerSix

  def self.sum_of_squares(numbers, sum = 0)
    numbers.each {|num| sum += num**2}
    sum
  end

  def self.square_of_sum(numbers, sum = 0)
    numbers.each {|num| sum += num}
    sum**2
  end

  def self.diff_of_sum_of_squares_and_square_of_sums(numbers)
    square_of_sum(numbers) - sum_of_squares(numbers)
  end

end



require 'rspec'

describe EulerSix do

  it 'can calculate the sum of squares of an array of integers' do
    EulerSix.sum_of_squares((1..10).to_a).should == 385
  end

  it 'can calculate the square of the sum of an array of integers' do
    EulerSix.square_of_sum((1..10).to_a).should == 3025
  end

  it 'can find the difference between a sum of the squares and a square of the sum of an array of integers' do
    EulerSix.diff_of_sum_of_squares_and_square_of_sums((1..10).to_a).should == 2640
  end

end