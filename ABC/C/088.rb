# https://atcoder.jp/contests/abc088/tasks/abc088_c

c11,c12,c13 = gets.chomp.split.map(&:to_i)
c21,c22,c23 = gets.chomp.split.map(&:to_i)
c31,c32,c33 = gets.chomp.split.map(&:to_i)

=begin
a1 + b1 = c11
a1 + b2 = c12
a1 + b3 = c13
a2 + b1 = c21
a2 + b2 = c22
a2 + b3 = c23
a3 + b1 = c31
a3 + b2 = c32
a3 + b3 = c33
=end

(0..100).each do |a1|
    (0..100).each do |a2|
        (0..100).each do |a3|
            next if [(c11-a1),(c21-a2),(c31-a3)].uniq.size != 1
            next if [(c12-a1),(c22-a2),(c32-a3)].uniq.size != 1
            next if [(c13-a1),(c23-a2),(c33-a3)].uniq.size != 1
            puts "Yes"
            exit
        end
    end
end
puts "No"