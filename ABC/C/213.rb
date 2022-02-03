# https://atcoder.jp/contests/abc213/tasks/abc213_c

H,W,N = gets.chomp.split.map(&:to_i)
arr = Array.new(N) { gets.split.map(&:to_i) }

def compress(a)
    m = Hash.new
    a.sort.uniq.each_with_index do |v, i|
      m[v] = i + 1
    end
    return a.map {|v| m[v] }
end

list_y = []
list_x = []

arr.each do |a,b|
    list_y << a
    list_x << b
end

compress_y = compress(list_y)
compress_x = compress(list_x)

N.times do |i|
    puts "#{compress_y[i]} #{compress_x[i]}"
end

# 座標圧縮