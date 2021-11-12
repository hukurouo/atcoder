# https://atcoder.jp/contests/abc079/tasks/abc079_b

N = gets.to_i

lucas = [2,1]

85.times do |i|
    l = lucas[i] + lucas[i+1]
    lucas << l
end

puts lucas[N]