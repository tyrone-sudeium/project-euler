# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def factors(n)
  Enumerator.new do |enum|
    i = 2
    while n > 1
      if n % i == 0
        enum.yield(i)
        n = n / i
      end
      i = i + 1
    end 
  end
end

puts factors(600851475143).select{|n| Prime.prime?(n)}.last
