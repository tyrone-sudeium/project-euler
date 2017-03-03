# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is:
# 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!

# So Ruby happens to be able to deal with really large numbers built-in.
# Which means I can solve this in a simple way:

require "./factorial"
puts fac(100).to_s.chars.map { |c| c.to_i }.reduce(:+)
