# https://atcoder.jp/contests/abc235/tasks/abc235_c

N,Q = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
xk = Array.new(Q) { gets.split.map(&:to_i) }

hash={}
arr.each_with_index do |a,i|
    hash[a]||=[]
    hash[a] << i+1
end
xk.each do |x,k|
    if hash[x] && hash[x][k-1]
        puts hash[x][k-1]
    else
        puts -1
    end
end