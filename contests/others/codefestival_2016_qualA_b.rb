# https://atcoder.jp/contests/code-festival-2016-quala/tasks/codefestival_2016_qualA_b

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

ans = 0
arr.each_with_index do |a,i|
    if arr[a-1] == i+1
        ans += 1
    end
end
puts ans/2