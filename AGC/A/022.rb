# https://atcoder.jp/contests/agc022/tasks/agc022_a

s = gets.chomp

#使ってない文字がある場合
if s.chars.uniq.size != 26
    ("a".."z").each do |c|
        if !s.include? c
            puts s+c
            exit
        end
    end
elsif s=="zyxwvutsrqponmlkjihgfedcba"
    puts "-1"
else
    list = [s.reverse[0]]
    (0..s.size-2).each do |i|
        if s.reverse[i] > s.reverse[i+1]
            list2=[]
            list.each do |l|
                if s.reverse[i+1] < l
                    list2 << l
                end
            end
            puts s.chars[0,(s.size-i-2)].join + list2.min 
            exit
        else
            list << s.reverse[i+1]
        end
    end
end

# s[0..0]ではなくs.chars[0,0]を使う