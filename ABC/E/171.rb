# https://atcoder.jp/contests/abc171/tasks/abc171_e

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

n=0
arr.each do |a|
    n^=a
end
ans=[]
arr.each do |a|
    t = n^a
    ans << t
end
puts ans.join(" ")