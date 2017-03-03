# Given a number, this returns an enumerator over its factors.
def factors(n)
  return [] if n.nil?
  Enumerator.new do |enum|
    large_factors = []
    1.upto(Math.sqrt(n).to_i).each do |i|
      if n % i == 0
        enum.yield(i)
        large_factors << n / i unless i == n / i
      end
    end
    large_factors.reverse.each do |f|
      enum.yield(f)
    end
  end
end
