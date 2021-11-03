# https://atcoder.jp/contests/agc027/tasks/agc027_a

N,x = gets.chomp.split.map(&:to_i);
arr = gets.chomp.split.map(&:to_i).sort;

cnt = 0
N.times do |i|
    x-=arr[i]
    break if x<0
    cnt+=1
end

cnt -= 1 if x>0
puts cnt