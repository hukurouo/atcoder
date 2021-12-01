# https://atcoder.jp/contests/abc082/tasks/arc087_a

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

hash = arr.tally
ans = 0
hash.each do |k,v|
    if k < v
        ans += v-k
    elsif k == v
    else
        ans += v
    end 
end
puts ans