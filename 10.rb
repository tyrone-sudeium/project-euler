def eratosthenes(n)
  a = Hash.new
  2.upto(n) do |i|
    a[i] = true
  end
  2.upto(Math.sqrt(n)) do |i|
    if a[i]
      x = 0
      loop do
        j = i * i + x * i
        break if j > n
        a[j] = false
        x = x + 1
      end
    end
  end
  a.select{|k,v| k if v}.keys
end

puts eratosthenes(2_000_000).reduce(:+)
