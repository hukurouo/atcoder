# https://atcoder.jp/contests/abc094/tasks/arc095_b

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

n = arr.max
d = Float::INFINITY
r = [d,0]
arr.each do |a|
    dif = ((n/2.0)-a).abs
    if r[0] >= dif
        r = [dif, a]
    end
end

puts "#{n} #{r[1]}"