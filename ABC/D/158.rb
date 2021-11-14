# https://atcoder.jp/contests/abc158/tasks/abc158_d

s = gets.chomp.chars
qn = gets.to_i
query = Array.new(qn) { gets.split } 
is_reverse = false
cnt = 0
query.each do |q|
    if q[0] == "1"
        is_reverse = !is_reverse
        cnt += 1
    else
        if is_reverse
            if q[1] == "1"
                s.push q[2]
            else
                s.unshift q[2]
            end
        else
            if q[1] == "1"
                s.unshift q[2]
            else
                s.push q[2]
            end
        end
    end
end

if cnt%2==0
    puts s.join
else
    puts s.reverse.join
end