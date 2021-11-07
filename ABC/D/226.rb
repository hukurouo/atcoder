# https://atcoder.jp/contests/abc226/tasks/abc226_d
 
N = gets.to_i
arr = Array.new(N) { gets.split.map(&:to_i) }
magic = []
 
[*1..N].permutation(2).each do |c|
    si = c[0]-1
    ei = c[1]-1
    dx = arr[ei][0] - arr[si][0]
    dy = arr[ei][1] - arr[si][1]
    div = dx.gcd(dy)
    magic << [dx/div, dy/div]
end
 
puts magic.uniq.size