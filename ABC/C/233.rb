# https://atcoder.jp/contests/abc233/tasks/abc233_c

N,X = gets.chomp.split.map(&:to_i)
arr = Array.new(N) { gets.split.map(&:to_i) }

list = []
queue = []

arr[0].each_with_index do |a,i|
    next if i==0
    queue << [0,a]
end

until queue.empty?
    i, score = queue.shift
    i+=1
    if i==N
        list << score
        next
    end
    arr[i].each_with_index do |a,j|
        next if j==0
        queue << [i, score*a]
    end
end
puts list.count(X)