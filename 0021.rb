# Let d(n) be defined as the sum of proper divisors of n (numbers less than n
# which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and
# each of a and b are called amicable numbers.
# 
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44,
# 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4,
# 71 and 142; so d(284) = 220.
# 
# Evaluate the sum of all the amicable numbers under 10000.

require "./factors"

def divisor_sum(n)
  (factors(n).to_a - [n]).reduce(:+)
end

def is_amicable(n)
  a = divisor_sum(n)
  b = divisor_sum(a)
  a != b && b == n
end

puts 1.upto(10000).select { |n| is_amicable(n) }.reduce(:+)
