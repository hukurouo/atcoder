# https://atcoder.jp/contests/arc110/tasks/arc110_b

N = gets.to_i
T = gets.chomp

fr = ["","1","11"]
ba = ["","0","10"]

if T=="1"
    puts 10**10 * 2
    exit
end

fr.each do |f|
    ba.each do |b|
        arr = T.chars
        if f=="11"
            arr.unshift "1"
            arr.unshift "1"
        elsif f=="1"
            arr.unshift "1"
        end
        if b=="0"
            arr.push "0"
        elsif b=="10"
            arr.push "1"
            arr.push "0"
        end
        flag = true
        next if arr.size%3 != 0
        i=2
        while i<arr.size
            if arr[i-2..i] == ["1", "1", "0"]
            else
                flag = false
            end
            i+=3
        end
        if flag
            puts 10**10 - (arr.size/3) + 1
            exit
        end
    end
end
puts 0