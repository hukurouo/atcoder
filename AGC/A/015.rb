# https://atcoder.jp/contests/agc015/tasks/agc015_a

N,A,B = gets.chomp.split.map(&:to_i)

high = A + B*(N-1)
low = A*(N-1) + B
if high-low+1 < 0
    puts 0
else
    puts high-low+1
end