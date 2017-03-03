# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# 
#   a^2 + b^2 = c^2
#
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def find_triplets(max)
  triplets = []
  (1..max).each do |a|
    a2 = a * a
    (a+1..max).each do |b|
      b2 = b * b
      c = Math.sqrt(a2 + b2)
      if c % 1 == 0
        triplets << [a,b,c]
      end
    end
  end
  triplets
end

def find_special_triplet(arr, special)
  arr.each do |t|
    return t if t[0] + t[1] + t[2] == special
  end
end

special = find_special_triplet(find_triplets(1000), 1000)
puts special[0] * special[1] * special[2]
