# 入力
n = gets.to_i
arr = gets.chomp.split(" ").map(&:to_i);

min = Float::INFINITY
(1..100).each do |pp|
    sum = 0
    arr.each do |x|
        kyori = (x-pp)**2
        sum += kyori
    end
    min = [sum, min].min
end
res = min
# 出力
print("#{res}\n")