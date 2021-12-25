# https://atcoder.jp/contests/agc034/tasks/agc034_b

s = gets.chomp

arr = s.chars
n=s.size
i=0
cnt=0
acnt=0
while i+2 < n
    if arr[i] == "A"
        acnt+=1
        if arr[i+1] == "A"
            i+=1
            next
        end
    end
    if arr[i..i+2] == ["A","B","C"]
        cnt+=acnt
        arr[i] = "B"
        arr[i+1] = "C"
        arr[i+2] = "A"
        i+=2
        acnt-=1
        next
    else
        acnt=0
    end
    i+=1
end
puts cnt