# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10001st prime number?

def is_prime?(n)
  ((2..(Math.sqrt(n)))).each do |i|
    return false if n % i == 0
  end
  return true
end

def find_prime(target)
  count = 2
  index = 0

  while true
    index += 1 if is_prime?(count)
    return count if index == target
    count += 1
  end
end

require 'rspec'

describe :find_prime do

  it 'returns the nth prime number' do
    expect(find_prime(6)).to eq(13)
  end

end