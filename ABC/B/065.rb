# https://atcoder.jp/contests/abc065/tasks/abc065_b

N = gets.to_i
arr = Array.new(N) { gets.to_i }

cnt = 0
index = 0
N.times do |i|
    if index == 1
        puts cnt
        exit
    end
    index = arr[index]-1
    cnt += 1
end
puts -1