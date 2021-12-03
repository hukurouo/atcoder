# https://atcoder.jp/contests/abc149/tasks/abc149_d

N,K = gets.chomp.split.map(&:to_i)
R,S,P = gets.chomp.split.map(&:to_i)
T = gets.chomp

ans = 0
N.times do |i|
    if i >= K
        if T[i-K]==T[i]
            T[i] = "x"
            next
        end
    end
    point = 0
    point = R if T[i]=="s"
    point = S if T[i]=="p"
    point = P if T[i]=="r"
    ans += point
end
puts ans