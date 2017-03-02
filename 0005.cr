# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

def has_factors(num, from = 1, to = 20)
  from.upto(to).reduce(true) { |a, x| a && num % x == 0 }
end

# TODO: Make this faster.
# I'm sure there's a faster way to do this than checking every twentieth number
# I just haven't had time to work out the mathematics yet.
puts (20..Float64::INFINITY).step(20).each.select { |x| has_factors(x.to_i) }.first.to_i
