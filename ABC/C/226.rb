# https://atcoder.jp/contests/abc226/tasks/abc226_c

N = gets.to_i
arr = Array.new(N) { gets.split.map(&:to_i) }
memo = Array.new(N,false)
memo[-1] = true
 
arr.each_with_index.reverse_each do |a,i|
    next if memo[i] == false
    a[1].times do |i|
        memo[a[i+2]-1] = true
    end
end
 
time = 0
memo.each_with_index do |m,i|
    time += arr[i][0] if m
end
 
puts time