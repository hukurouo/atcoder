# https://atcoder.jp/contests/abc150/tasks/abc150_c

N = gets.to_i
arr_p = gets.chomp.split.map(&:to_i);
arr_q = gets.chomp.split.map(&:to_i);

nums = [*1..N].permutation(N).map {|arr| arr.join.to_s }
index_p = nums.bsearch_index {|x| x >= arr_p.join}
index_q = nums.bsearch_index {|x| x >= arr_q.join}

puts (index_q - index_p).abs