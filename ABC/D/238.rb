# https://atcoder.jp/contests/abc238/tasks/abc238_d

T = gets.to_i
arr = Array.new(T) { gets.split.map(&:to_i) }

# x AND y = a
# x + y = x XOR y + 2(x AND y) = s
#         
# => ビット演算で足し算を実装
# ref: https://www.messiahworks.com/archives/19836
#
# => x XOR y = s - 2a
# => (x XOR y) AND (x AND y) = 0 = (s-2a) AND (x AND y)
# => (s-2a) AND a = 0

arr.each do |a,s|
    if s >= 2*a && (s-2*a)&a == 0
        puts "Yes"
    else
        puts "No"
    end
end