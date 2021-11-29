# https://atcoder.jp/contests/agc017/tasks/agc017_a

N,P = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

odd = 0
even = 0
arr.each do |a|
    if a%2==0
        even+=1
    else
        odd+=1
    end
end

if odd==0
    if P==1
        puts 0
        exit
    else
        if N==1
            puts 2
            exit
        else
            puts (2**(odd)) * (2**(even))
            exit
        end
    end 
end

puts (2**(odd)) * (2**(even)) / 2