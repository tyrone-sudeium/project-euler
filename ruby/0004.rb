# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

puts 100.upto(999).to_a.combination(2).to_a.map{|x| x.reduce(:*)}
  .select{|x| "#{x}" == "#{x}".reverse}.sort.last
