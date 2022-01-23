# https://atcoder.jp/contests/abc236/tasks/abc236_b

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

hash=arr.tally
hash.each do |k,v|
    if v!=4
        puts k
        exit
    end
end