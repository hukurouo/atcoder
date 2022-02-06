# https://atcoder.jp/contests/abc166/tasks/abc166_e

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

hash = {}
arr.each_with_index do |a,i|
    hash[1+i-a]||=0
    hash[1+i-a]+=1
end
ans=0
arr.each_with_index do |a,i|
    hash[1+i-a]-=1
    hash[1+i+a]||=0
    ans += hash[1+i+a]
end
puts ans