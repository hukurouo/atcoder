# https://atcoder.jp/contests/agc011/tasks/agc011_b

N = gets.to_i
arr = gets.chomp.split.map(&:to_i).sort

counts = [arr.first]
(1...N).each do |i|
    a = arr[i]
    counts << counts.last + a
end

ans = 1
(N-1).downto(1).each do |i|
    if counts[i-1]*2 < arr[i]
        puts ans
        exit
    else
        ans+=1
    end
end
puts ans