# https://atcoder.jp/contests/abc134/tasks/abc134_c

N = gets.to_i
arr = Array.new(N) { gets.to_i }
maxs = arr.max(2)

arr.each do |a|
    if a == maxs[0]
        puts maxs[1]
    else
        puts maxs[0]
    end
end