# https://atcoder.jp/contests/abc109/tasks/abc109_d

H,W = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.split.map(&:to_i) }

list = []
(0...H).each do |i|
    (0...W).each do |j|
        n = arr[i][j]
        next if n%2==0
        next if i == H-1 && j == W-1
        if j == W-1
            list << [i,j,i+1,j]
            arr[i+1][j] += 1
        else
            list << [i,j,i,j+1]
            arr[i][j+1] += 1
        end
    end
end
puts list.size
list.each do |raw|
    puts raw.map{|x|x+1}.join(" ")
end