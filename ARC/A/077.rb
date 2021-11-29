# https://atcoder.jp/contests/abc066/tasks/arc077_a

n = gets.to_i
arr = gets.chomp.split.map(&:to_i)

ans = []
arr.each_with_index do |a,i|
    if i%2==0
        ans.push a
    else
        ans.unshift a
    end
end
if n%2==1
    ans.reverse!
end
puts ans.join(" ")