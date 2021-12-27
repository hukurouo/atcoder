# https://atcoder.jp/contests/panasonic2020/tasks/panasonic2020_d

N = gets.to_i

list = []
queue = []
queue << ["0",0]
until queue.empty?
    str, max = queue.shift
    if str.size == N
        list << str.split(//).map{|x|x.to_i}
        next
    end
    (0..max+1).each do |i|
        if i>max
            max=i
        end
        queue.push [str+i.to_s, max]
    end
end
chars = ("a".."z").to_a
list.sort.each do |arr|
    ans=""
    arr.each do |a|
        ans+=chars[a]
    end
    puts ans
end