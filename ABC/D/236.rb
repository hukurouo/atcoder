# https://atcoder.jp/contests/abc236/tasks/abc236_d

N = gets.to_i
arr = Array.new((2*N)-1) { gets.split.map(&:to_i) }

@memo=Array.new(2*N) { Array.new(2*N) }
arr.each_with_index do |ar,i|
    ar.each_with_index do |a,j|
        @memo[i+1][j+i+1] = a
    end
end

def calc(arr, num)
    return num if arr.length == 0
    max = 0
    i = arr.shift
    arr.each do |j|
        xor = num ^ @memo[i][j-1]
        a = arr.dup
        a.delete(j)
        m = calc(a, xor)
        max = m if max < m
    end
    return max
end
   
puts calc((1..(2*N)).to_a, 0)