# https://atcoder.jp/contests/abc128/tasks/abc128_c

N,M = gets.chomp.split.map(&:to_i);
lights = Array.new(M) { gets.split.map(&:to_i) }
conditions = gets.chomp.split.map(&:to_i);

ans = 0
[0, 1].repeated_permutation(N).each do |bits|
    is_all = true
    lights.each_with_index do |light,i|
        on_cnt = 0
        light.each_with_index do |l,j|
            next if j==0
            on_cnt += 1 if bits[l-1] == 1
        end
        is_all = false if on_cnt%2 != conditions[i]
    end
    ans += 1 if is_all
end

puts ans

# bit全探索