# https://atcoder.jp/contests/code-festival-2016-qualb/tasks/codefestival_2016_qualB_b

# 入力
n,a,b = gets.chomp.split(" ").map(&:to_i);
s = gets.chomp

arr = s.split(//)
cnt = 0
b_rank = 1
arr.each do |member|
    if member == "a"
        if cnt < a+b 
            print("Yes\n")
            cnt += 1
        else
            print("No\n")
        end
    elsif member == "b"
        if cnt < a+b && b_rank <= b 
            print("Yes\n")
            cnt += 1
        else
            print("No\n")
        end
        b_rank += 1
    else
        print("No\n")
    end
end