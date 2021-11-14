# https://atcoder.jp/contests/abc148/tasks/abc148_d

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

wall = 0
cnt = 0
is_fail = true
arr.each_with_index do |a,i|
    if wall+1 == a
        wall+=1
        is_fail = false
    else
        cnt += 1
    end
end

if is_fail
    puts -1
else
    puts cnt
end
