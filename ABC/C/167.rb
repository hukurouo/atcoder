# https://atcoder.jp/contests/abc167/tasks/abc167_c
 
N,M,X = gets.chomp.split.map(&:to_i)
arr = Array.new(N) { gets.split.map(&:to_i) }

ans=Float::INFINITY
[0,1].repeated_permutation(N).each do |bits|
    alg = Array.new(M,0)
    t=0
    bits.each_with_index do |b,i|
        if b==1
            cost = arr[i][0]
            t += cost
            scores = arr[i][1..-1]
            scores.each_with_index do |score,j|
                alg[j] += score
            end
        end
    end
    if (alg.select{|num|num<X}.size) == 0
        ans = [t,ans].min
    end
end
if ans == Float::INFINITY
    puts -1
else
    puts ans
end