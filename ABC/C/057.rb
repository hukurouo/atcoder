# https://atcoder.jp/contests/abc057/tasks/abc057_c

N = gets.to_i

list = []
i=1
while i*i <= N
    if N%i != 0
        i+=1
        next
    end
    list << [i,N/i]
    i+=1
end

ans = Float::INFINITY
list.each do |l|
    t = [l[0].to_s.size, l[1].to_s.size].max
    ans = [ans,t].min
end
puts ans