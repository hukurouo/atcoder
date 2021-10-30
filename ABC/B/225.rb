# https://atcoder.jp/contests/abc225/tasks/abc225_b
 
# 入力
N = gets.to_i
arr = Array.new(N-1) { gets.split.map(&:to_i) }
 
siten1 = arr[0][0]
siten2 = arr[0][1]
ng = []
 
arr.each do |a|
    if a.include? siten1
    else
        ng << "NG"
        break
    end
end
 
arr.each do |a|
    if a.include? siten2
    else
        ng << "NG"
        break
    end
end
 
if ng.size == 2
    puts "No"
else
    puts "Yes"
end