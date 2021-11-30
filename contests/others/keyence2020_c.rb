# https://atcoder.jp/contests/keyence2020/tasks/keyence2020_c

N,K,S = gets.chomp.split.map(&:to_i)

cnt = 0
list = []
N.times do |i|
    cnt += 1
    if cnt <= K
        list << S
    else
        if S==10**9
            list << 1
        else
            list << S+1
        end
    end
end
puts list.join(" ")