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
