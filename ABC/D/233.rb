# https://atcoder.jp/contests/abc233/tasks/abc233_d

N,K = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

counts = [0]
(0...N).each do |i|
    counts << counts.last + arr[i]
end
cnt=0
hash={}
counts.each do |c|
    if hash[c-K]
        cnt+=hash[c-K]
    end
    hash[c]||=0
    hash[c]+=1
end
puts cnt