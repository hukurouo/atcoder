# https://atcoder.jp/contests/code-festival-2017-quala/tasks/code_festival_2017_quala_c

H,W = gets.chomp.split.map(&:to_i)
arr = Array.new(H) { gets.chomp.chars }

list = []
i=W
while i>0
    if H%2==0 # 縦が偶数
        if i==1 # 残り一行
            list << [2]*(H/2)
        else
            list << [4]*(H/2)
        end
    else
        if i==1 # 残り一行
            list << [2]*(H/2) + [1]
        else
            list << [4]*(H/2) + [2]
        end
    end
    i-=2
end

hash = arr.flatten.tally
list = list.flatten.sort
while list.size > 0
    n = list.pop
    flag = true
    hash.each do |k,v|
        if v>=n
            hash[k]-=n
            flag = false
            break
        end
    end
    if flag
        puts "No"
        exit
    end
end
puts "Yes"