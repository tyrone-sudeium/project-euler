# Factorial
def fac(n)
  n.downto(1).inject(:*) || 1
end
