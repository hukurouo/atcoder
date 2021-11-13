# https://atcoder.jp/contests/abc141/tasks/abc141_c

N,K,Q = gets.chomp.split.map(&:to_i);
arr = Array.new(Q) { gets.to_i }

answers = Array.new(N,0)
arr.each do |a|
    answers[a-1] += 1
end

N.times do |i|
    puts (Q-K) < answers[i] ? "Yes" : "No"
end
