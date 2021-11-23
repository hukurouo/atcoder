# https://atcoder.jp/contests/keyence2019/tasks/keyence2019_b

S = gets.chomp

if S=="keyence"
    puts "YES"
    exit
end

(0..S.size-1).each do |i|
    (i..S.size-1).each do |j|
        s = Marshal.load(Marshal.dump(S))
        s.slice!(i..j)
        if s == "keyence"
            puts "YES"
            exit
        end
    end
end
puts "NO"