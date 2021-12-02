# https://atcoder.jp/contests/abc045/tasks/abc045_b

arr = Array.new(3) { gets.chomp.chars }

i = "a"
while true
    if i=="a"
        if arr[0].size == 0
            puts "A"
            exit
        end
        i = arr[0].shift
    elsif i=="b"
        if arr[1].size == 0
            puts "B"
            exit
        end
        i = arr[1].shift
    elsif i=="c"
        if arr[2].size == 0
            puts "C"
            exit
        end
        i = arr[2].shift
    end
end