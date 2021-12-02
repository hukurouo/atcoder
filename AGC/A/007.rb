# https://atcoder.jp/contests/agc007/tasks/agc007_a

H,W = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.chomp }

if arr.map{|x|x.count("#")}.sum == (H+W-1)
    puts "Possible"
else
    puts "Impossible"
end