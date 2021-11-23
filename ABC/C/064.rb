# https://atcoder.jp/contests/abc064/tasks/abc064_c

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

memo = Array.new(8,0)
joeker = 0

arr.each do |a|
    (1..8).each do |i|
        if a<400*i
            memo[i-1] = 1
            break
        end
    end
    joeker += 1 if a>=3200
end

if joeker == 0
    n = memo.count(1)
    puts "#{n} #{n}"
else
    mi = memo.count(1)
    ma = memo.count(1) + joeker
    mi = 1 if mi == 0
    puts "#{mi} #{ma}"
end