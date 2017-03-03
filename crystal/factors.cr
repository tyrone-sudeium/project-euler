# Given a number, this returns an array of its factors.

def factors(n)
  factors = [] of typeof(n)
  large_factors = [] of typeof(n)
  1.upto(Math.sqrt(n).to_i).each do |i|
    if n % i == 0
      factors << i
      large_factors << n / i unless i == n / i
    end
  end
  large_factors.reverse.each do |f|
    factors << f
  end
  factors
end
