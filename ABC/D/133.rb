# https://atcoder.jp/contests/abc133/tasks/abc133_d

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

d=0
arr.each_with_index do |a,i|
    if i%2==0
        d+=a*2
    else
        d-=a*2
    end
end
y1=d/2
ans = [y1]
(0..N-2).each do |i|
    ans << arr[i]*2-ans.last
end
puts ans.join(" ")