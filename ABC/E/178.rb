# https://atcoder.jp/contests/abc178/tasks/abc178_e

N = gets.to_i
arr = Array.new(N) { gets.split.map(&:to_i) }

xl = []
yl = []
arr.each do |x,y|
    xl << x+y
    yl << x-y
end
puts [xl.max - xl.min, yl.max - yl.min].max

# マンハッタン距離
# チェビシェフ距離