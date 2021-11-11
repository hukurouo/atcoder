# https://atcoder.jp/contests/agc024/tasks/agc024_a

a,b,c,k = gets.chomp.split.map(&:to_i);

if k%2 == 0
    puts (a-b)
else
    puts (a-b)*(-1)
end