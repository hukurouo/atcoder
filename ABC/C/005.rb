# https://atcoder.jp/contests/abc005/tasks/abc005_3

T = gets.to_i
N = gets.to_i
takoyaki = gets.chomp.split.map(&:to_i);
M = gets.to_i
customer = gets.chomp.split.map(&:to_i);

customer.each do |c|
    is_sold = false
    takoyaki.each_with_index do |t,i|
        if c.between?(t, t+T)
            takoyaki.delete_at i
            is_sold = true
            break
        end
    end
    unless is_sold
        puts "no"
        exit
    end
end

puts "yes"

# 貪欲法
# より厳しいところをとっていく Greedy