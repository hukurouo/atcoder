# https://atcoder.jp/contests/keyence2019/tasks/keyence2019_c

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)
brr = gets.chomp.split.map(&:to_i)

if arr.sum < brr.sum
    puts "-1"
    exit
end

# 余剰分
crr = []
N.times do |i|
    crr << arr[i]-brr[i]
end

req_cnt = crr.select { |num| num < 0}.size
if req_cnt == 0
    puts 0
    exit
end
req = crr.select { |num| num < 0}.sum * -1

cnt = 0
t = 0
crr.sort.reverse.each do |c|
    t += c
    cnt += 1
    if req <= t
        break
    end
end
puts req_cnt + cnt