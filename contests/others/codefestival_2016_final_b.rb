# https://atcoder.jp/contests/cf16-final/tasks/codefestival_2016_final_b

N = gets.to_i

t=0
arr = []
i=1
while t<N
    arr.push i
    t+=i
    i+=1
end

s = t-N
arr.delete(s)
puts arr