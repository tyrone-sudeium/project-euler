# Given a number, this returns an enumerator over its factors.
def factors(n)
  Enumerator.new do |enum|
    i = 2
    large_factors = []
    while n > i
      if n % i == 0
        enum.yield(i)
        n = n / i
        large_factors << n if n > i
      end
      i = i + 1
    end

    large_factors.reverse.each do |f|
      enum.yield(f)
    end
  end
end
