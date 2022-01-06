# https://atcoder.jp/contests/nikkei2019-qual/tasks/nikkei2019_qual_c

N = gets.to_i
arr = Array.new(N) { gets.split.map(&:to_i) }

arr = arr.sort_by{|a,b|(a+b)}
a=0
b=0
while arr.size > 0
    t = arr.pop
    a += t[0]
    if arr.size > 0
        t = arr.pop 
        b += t[1]
    end
end
puts a-b