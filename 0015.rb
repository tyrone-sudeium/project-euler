def fac(n)
  n.downto(1).inject(:*)
end

n = 20
puts fac(n+n) / (fac(n) * fac(n))
