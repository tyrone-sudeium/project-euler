def maximal_total(t)
  t = t.reverse
  t = t.each.with_index do |a,i|
    next a if i == 0
    a.each.with_index do |x,j|
      bl = t[i-1][j]
      br = t[i-1][j+1]
      a[j] = [bl,br].max + x
    end
    t[i] = a
  end
  t.last[0]
end
