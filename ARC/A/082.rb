# https://atcoder.jp/contests/abc072/tasks/arc082_a

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

hash = {}
arr.each do |a|
    hash[a-1]||=0
    hash[a]||=0
    hash[a+1]||=0
    hash[a-1]+=1
    hash[a]+=1
    hash[a+1]+=1
end

ans = 0
hash.each do |k,v|
    ans = [ans,v].max
end
puts ans