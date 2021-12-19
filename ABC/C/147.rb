# https://atcoder.jp/contests/abc147/tasks/abc147_c

N = gets.to_i
arr = []
(1..N).each do |i|
    a = gets.to_i
    xy = Array.new(a) { gets.split.map(&:to_i) }
    arr << xy
end

ans = 0
[0, 1].repeated_permutation(N).each do |bits|
    is_all = true
    arr.each_with_index do |xy_list,i|
        xy_list.each do |x,y|
            if bits[i] == 1
                if y==1
                    is_all = false if bits[x-1] != 1
                else
                    is_all = false if bits[x-1] != 0
                end
            end
        end
    end
    ans = [bits.count(1), ans].max if is_all
end
puts ans