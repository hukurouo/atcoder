# https://atcoder.jp/contests/abc234/tasks/abc234_e

x = gets.to_i

list = []
(1..9).each do |n|
    (0..9).each do |d|
        queue = []
        queue << n.to_s
        until queue.empty?
            s = queue.shift
            next if s.size > 18
            list << s.to_i
            l = s[-1].to_i
            ne = (l+d).to_s[-1]
            if (l+d)<10
                queue << s+ne
                next
            end
        end
    end
    (0..9).each do |d|
        queue = []
        queue << n.to_s
        until queue.empty?
            s = queue.shift
            next if s.size > 18
            list << s.to_i
            l = s[-1].to_i
            ne = (l-d).to_s[-1]
            if (l-d)<10 && 0<=(l-d)
                queue << s+ne
                next
            end
        end
    end
end
puts list.select { |num| num>=x }.min