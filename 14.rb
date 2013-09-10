def collatz(n)
  case n % 2
  when 0
    n/2
  else
    return 3 * n + 1
  end
end

def collatz_sequence(n)
  a = [n]
  while n > 1 do
    n = collatz(n)
    a << n
  end
  a
end

a = (1..999_999).to_a.map{|n|collatz_sequence(n)}.map(&:count)
puts a.find_index(a.max) + 1
