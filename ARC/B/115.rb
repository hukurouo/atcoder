# https://atcoder.jp/contests/arc115/tasks/arc115_b
 
N = gets.to_i
arr = Array.new(N) { gets.split.map(&:to_i) }

lista=[]
listb=[]
arr.each do |a|
    lista << a.min
end
i=0
while i<N
    t = []
    j=0
    while j<N
        t << arr[j][i]
        j+=1
    end
    listb << t.min
    i+=1
end

a1 = lista[0]
b1 = listb[0]
s = a1 + b1 - arr[0][0]
if a1 >= s
    a1 -= s
else
    s -= a1
    a1 = 0
    b1 -= s
end

ansa = [a1]
ansb = [b1]
i=1
while i<N
    ax = arr[i][0] - b1
    ansa << ax
    bx = arr[0][i] - a1
    ansb << bx
    i+=1
end
flag = true
i=0
while i<N
    j=0
    while j<N
        flag = false if arr[i][j] != ansa[i] + ansb[j]
        j+=1
    end
    i+=1
end
if flag
    puts "Yes"
    puts ansa.join(" ")
    puts ansb.join(" ")
else
    puts "No"
end