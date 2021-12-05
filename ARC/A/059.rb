# https://atcoder.jp/contests/arc059/tasks/arc059_a

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

ans = Float::INFINITY
(-100..100).each do |y|
    t = 0
    arr.each do |x|
        t += (x-y)**2
    end
    ans = [t,ans].min
end
puts ans