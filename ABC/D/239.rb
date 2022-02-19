# https://atcoder.jp/contests/abc239/tasks/abc239_d

a,b,c,d = gets.chomp.split.map(&:to_i)

require "prime"

(a..b).each do |f|
  can_prime = false
  (c..d).each do |s|
    can_prime = true if (f+s).prime?
  end
  if !can_prime
    puts "Takahashi"
    exit
  end
end
puts "Aoki"