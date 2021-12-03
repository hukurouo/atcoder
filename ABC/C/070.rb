# https://atcoder.jp/contests/abc070/tasks/abc070_c

N = gets.to_i
arr = Array.new(N) { gets.to_i }

puts arr.inject(:lcm)