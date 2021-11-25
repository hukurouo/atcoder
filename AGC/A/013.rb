# https://atcoder.jp/contests/agc013/tasks/agc013_a

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

status = ""
cnt = 0
(N-1).times do |i|
    if status == "plus" && arr[i+1]-arr[i] < 0
        cnt+=1
        status = ""
        next
    elsif status == "minus" && arr[i+1]-arr[i] > 0
        cnt += 1
        status = ""
        next
    end
    if arr[i+1]-arr[i] > 0
        status = "plus"
    elsif arr[i+1]-arr[i] < 0
        status = "minus"
    end
end
puts cnt+1