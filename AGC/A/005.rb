# https://atcoder.jp/contests/agc005/tasks/agc005_a

X = gets.chomp

s=0
t=0
cnt=0
X.chars.each do |c|
    if c=="S"
        s+=1
    else
        t+=1
        if s>0
            s-=1
            t-=1
            cnt+=2
        end
    end
end
puts X.size - cnt