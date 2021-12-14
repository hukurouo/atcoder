# https://atcoder.jp/contests/abc084/tasks/abc084_c

N = gets.to_i
arr = Array.new(N-1) { gets.split.map(&:to_i) }

(0...N-1).each do |i|
    t=0
    (i...N-1).each do |j|
        a = arr[j]
        c,s,f = a[0],a[1],a[2]
        if s>t
            t+=(s-t)
        else
            if (t-s)%f==0
            else
                wait = f - (t-s)%f
                t+= wait
            end
        end
        t+=c
    end
    puts t
end
puts 0