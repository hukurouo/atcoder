# https://atcoder.jp/contests/abc237/tasks/abc237_b

H,W = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.split.map(&:to_i) }

arr_b = Array.new(W) { Array.new(H) }
i=0
while i<H
    a = arr[i]
    j=0
    while j<W
        arr_b[j][i] = a[j]
        j+=1
    end
    i+=1
end
arr_b.each do |raw|
    puts raw.join(" ")
end