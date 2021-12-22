# https://atcoder.jp/contests/abc114/tasks/abc114_c

N = gets.to_i

list = []
queue = []
queue << "3"
queue << "5"
queue << "7"
until queue.empty?
    num = queue.shift
    list << num
    next if num.size >= 9
    ["3","5","7"].each do |s|
        queue.push(num+s)
    end
end

ans=0
list.each do |s|
    if s.include?("3") && s.include?("5") && s.include?("7")
        ans+=1 if s.to_i <= N
    end
end
puts ans