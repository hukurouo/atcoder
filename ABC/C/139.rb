# https://atcoder.jp/contests/abc139/tasks/abc139_c

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);

ans = 0
cnt = 0
(N-1).times do |i|
    if arr[i] >= arr[i+1]
        cnt += 1
    else
        cnt = 0
    end
    ans = [ans, cnt].max
end
puts ans