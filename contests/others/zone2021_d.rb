# https://atcoder.jp/contests/zone2021/tasks/zone2021_d

s = gets.chomp

arr=[]
is_reverse = false
s.chars.each do |c|
    if c=="R"
        is_reverse = !is_reverse
    else
        if is_reverse
            if arr[0] == c
                arr.shift
            else
                arr.unshift c
            end
        else
            if arr[-1] == c
                arr.pop
            else
                arr.push c
            end
        end
    end
end

if is_reverse
    puts arr.reverse.join("")
else
    puts arr.join("")
end