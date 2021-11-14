# https://atcoder.jp/contests/abc050/tasks/abc050_b

N = gets.to_i
arr = gets.chomp.split.map(&:to_i);
M = gets.to_i
drink = Array.new(M) { gets.split.map(&:to_i) }

drink.each do |d|
    t = Marshal.load(Marshal.dump(arr))
    t[d[0]-1] = d[1]
    puts t.sum
end