# https://atcoder.jp/contests/abc133/tasks/abc133_c

L,R = gets.chomp.split.map(&:to_i)

ans = Float::INFINITY
(L..R).each do |i|
    ((i+1)..R).each do |j|
        t = (i*j)%2019
        ans = [ans,t].min
        if ans == 0
            puts 0
            exit
        end
    end
end
puts ans