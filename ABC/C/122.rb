# https://atcoder.jp/contests/abc122/tasks/abc122_c

#入力
N,Q = gets.chomp.split(" ").map(&:to_i)
S = gets.chomp
arr = Array.new(Q) { gets.split.map(&:to_i) }
counts = Array.new(N+1,0)

t = 0
(N-1).times do |i|
    s = S[i..i+1]
    t+=1 if s == "AC"
    counts[i+2] = t
end

arr.each do |l,r|
    puts counts[r] - counts[l]
end

# 累積和