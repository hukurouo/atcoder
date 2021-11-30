# https://atcoder.jp/contests/abc068/tasks/arc079_a

N,M = gets.chomp.split.map(&:to_i)
arr = Array.new(M) { gets.split.map(&:to_i) }

way = []
arr.each do |a|
    if a[0]==1
        way << a[1]
    elsif a[1]==N
        way << a[0]
    end
end
hash = way.tally
hash.each do |k,v|
    if v>1
        puts "POSSIBLE"
        exit
    end
end
puts "IMPOSSIBLE"