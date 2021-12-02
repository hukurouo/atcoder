# https://atcoder.jp/contests/agc008/tasks/agc008_a

x,y = gets.chomp.split.map(&:to_i)

list = []

list << (y-x)
list << ((y*-1)-(x)) + 1
list << (y-(x*-1)) + 1
list << ((y*-1)-(x*-1)) + 2

puts list.select { |num| num > 0 }.min