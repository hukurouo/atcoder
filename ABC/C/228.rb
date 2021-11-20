# https://atcoder.jp/contests/abc228/tasks/abc228_c

N,K = gets.chomp.split.map(&:to_i);
arr = Array.new(N) { gets.split.map(&:to_i) }

totals = []

arr.each do |a|
    totals << a.sum
end

obj = Marshal.load(Marshal.dump(totals))
obj.sort!.reverse!

arr.each do |a|
    if obj[K-1] <= a.sum + 300
        puts "Yes"
    else
        puts "No"
    end
end