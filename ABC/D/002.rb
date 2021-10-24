# https://atcoder.jp/contests/abc002/tasks/abc002_4

#入力
N,M = gets.chomp.split.map(&:to_i);
relations = Array.new(M) { gets.chomp.split.map(&:to_i); }
 
ans = 0
def is_all_include?(relations, rels)
    n = rels.size
    flag = true
    (0..n-1).each do |i|
        ((i+1)..n-1).each do |j|
            flag = false unless relations.include? [rels[i],rels[j]]
        end
    end
    flag
end

[0, 1].repeated_permutation(N).each do |bits|
    rels = []
    N.times do |i|
        next if bits[i] == 0
        rels << i+1 
    end
    if is_all_include?(relations, rels)
        members = rels.size 
        ans = [ans, members].max
    end
end

res = ans

# 出力
print("#{res}\n")

# bit全探索