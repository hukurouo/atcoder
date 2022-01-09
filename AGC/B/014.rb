# https://atcoder.jp/contests/agc014/tasks/agc014_b

N,M = gets.chomp.split.map(&:to_i)
arr = Array.new(M) { gets.split.map(&:to_i) }

hash = arr.flatten.tally
hash.each do |k,v|
    if v%2==1
        puts "NO"
        exit
    end
end
puts "YES"