# https://atcoder.jp/contests/abc153/tasks/abc153_d

H = gets.to_i

nums = []
40.times do |i|
    nums << 2**(i+1)
end

nums.each do |n|
    if n > H
        puts n-1
        exit
    end
end