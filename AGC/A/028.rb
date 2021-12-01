# https://atcoder.jp/contests/agc028/tasks/agc028_a

N,M = gets.chomp.split.map(&:to_i)
S = gets.chomp
T = gets.chomp

lcm = N.lcm(M)
(N.gcd(M)).times do |i|
    s = lcm/M
    t = lcm/N
    if S[i*s] != T[i*t]
        puts -1
        exit
    end
end
puts lcm