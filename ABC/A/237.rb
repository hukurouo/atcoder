# https://atcoder.jp/contests/abc237/tasks/abc237_a

N = gets.to_i

if (-2)**31 <= N && (2)**31 > N
    puts "Yes"
else
    puts "No"
end