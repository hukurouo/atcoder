# https://atcoder.jp/contests/abc054/tasks/abc054_b

N,M = gets.chomp.split.map(&:to_i)
arr = Array.new(N) { gets.chomp }
arr2 = Array.new(M) {gets.chomp }

(0..(N-M)).each do |y|
    (0..(N-M)).each do |x|
        flag = true
        arr2.each_with_index do |a,i|
            if arr[y+i][x...x+M] == a
                #OK
            else
                #NG
                flag = false
                break
            end
        end
        if flag
            puts "Yes"
            exit
        end
    end
end
puts "No"