# https://atcoder.jp/contests/abc157/tasks/abc157_c

N,M = gets.chomp.split.map(&:to_i)
arr = Array.new(M) { gets.split.map(&:to_i) }

ans = -1

st = 1*(10)**(N-1)
st = 0 if st==1
en = (1*(10)**N)-1
(st..en).each do |n|
    s = n.to_s
    flag = true
    arr.each do |a|
        flag = false if s[a[0]-1] != a[1].to_s
    end
    if flag
        puts n
        exit
    end
end
puts ans 