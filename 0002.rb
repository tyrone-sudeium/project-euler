def fib_sequence
  Enumerator.new do |enum|
    previous = [0, 1]
    while true
      val = previous.reduce(:+)
      enum.yield(val)
      previous << val
      previous.shift
    end
  end
end

fibs = fib_sequence.take_while{|n| n < 4_000_000}
sum  = fibs.select{|n| n % 2 == 0}.reduce(:+)
puts sum
