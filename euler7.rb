# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10001st prime number?

def is_prime?(n)
  ((2..(Math.sqrt(n)))).each do |i|
    return false if n % i == 0
  end
  return true
end

def find_prime(target)

  count = 3
  index = 1 # start at 1 since we are skipping the number 2 (the first prime number)

  while true
    index += 1 if is_prime?(count)
    return count if index == target
    count += 2 # only test odd numbers
  end
end

require 'rspec'

describe :find_prime do

  it 'returns the nth prime number' do
    expect(find_prime(3)).to eq(5)
    expect(find_prime(6)).to eq(13)
    expect(find_prime(10)).to eq(29)
    expect(find_prime(10001)).to eq(104743)
  end

end
