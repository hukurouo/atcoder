# https://atcoder.jp/contests/arc098/tasks/arc098_a

N = gets.to_i
S = gets.chomp

countW=[0]
countE=[0]
N.times do |i|
    if S[i]=="W"
        countW << countW.last + 1
        countE << countE.last
    else
        countW << countW.last
        countE << countE.last + 1
    end
end
ans = Float::INFINITY
N.times do |i|
    l = countW[i]-countW[0]
    r = countE[N]-countE[i+1]
    ans = [ans,l+r].min
end
puts ans