# https://atcoder.jp/contests/caddi2018/tasks/caddi2018_b

N = gets.to_i
arr = Array.new(N) { gets.to_i }

arr.each do |a|
    if a%2==1
        puts "first"
        exit
    end
end
puts "second"

# 小さいNで実験して仮説を立てる