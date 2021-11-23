# https://atcoder.jp/contests/abc096/tasks/abc096_c

H,W = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.chomp }

arr.each_with_index do |a,i|
    arr[i] = "."+a+"."
end
arr.unshift "."*(W+2)
arr.push "."*(W+2)

(H+2).times do |i|
    (W+2).times do |j|
        if arr[i][j] == "#"
            flag = false
            dx = [-1,0,1,0]
            dy = [0,-1,0,1]
            4.times do |k|
                flag = true if arr[i+dx[k]][j+dy[k]] == "#"
            end
            if !flag
                puts "No"
                exit
            end
        end
    end
end
puts "Yes"