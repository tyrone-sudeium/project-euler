# Starting in the top left corner of a 2×2 grid, and only being able to move
# to the right and down, there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20×20 grid?

def fac(n)
  n.downto(1).inject(:*)
end

n = 20
puts fac(n+n) / (fac(n) * fac(n))
