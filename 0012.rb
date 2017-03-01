require 'prime'

def factors_of(n)
  return [1] if n == 1
  primes, powers = n.prime_division.transpose
  exponents = powers.map{|i| (0..i).to_a}
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map{|prime, power| prime**power}.inject(:*)
  end
  divisors.sort.map{|div| [div, n / div]}
end

def unique_factors_of(n)
  factors_of(n).flatten.uniq
end

def triangle_numbers
  (1..Float::INFINITY).lazy.flat_map do |num|
    (1..num).to_a.reduce(&:+)
  end
end

puts triangle_numbers.find{|n| unique_factors_of(n).count > 500}
