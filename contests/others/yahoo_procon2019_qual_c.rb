# https://atcoder.jp/contests/yahoo-procon2019-qual/tasks/yahoo_procon2019_qual_c

k,a,b = gets.chomp.split.map(&:to_i)

rev = b-a-2
ans = 1+k
if rev > 0
    bonus = (k-a+1)/2
    ans += bonus*rev
end
puts ans