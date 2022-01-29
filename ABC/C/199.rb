# https://atcoder.jp/contests/abc199/tasks/abc199_c

N = gets.to_i
S = gets.chomp
Q = gets.to_i
arr = Array.new(Q) { gets.split.map(&:to_i) }

chars = S.chars
is_reverse = false
arr.each do |t,a,b|
    if t==1
        if is_reverse
            if a >= N
                a-=N
            else
                a+=N
            end
            if b >= N
                b-=N
            else
                b+=N
            end
        end
        tmp = chars[a-1].dup
        chars[a-1] = chars[b-1]
        chars[b-1] = tmp
    elsif t==2
        is_reverse = !is_reverse
    end
end

if is_reverse
    puts (chars[N..-1] + chars[0...N]).join("")
else
    puts chars.join("")
end