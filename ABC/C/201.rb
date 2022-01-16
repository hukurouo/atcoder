# https://atcoder.jp/contests/abc201/tasks/abc201_c

s = gets.chomp

inc = []
exc = []
s.chars.each_with_index do |c,i|
    if c=="o"
        inc << i
    elsif c=="x"
        exc << i
    end
end

if inc.size > 4
    puts 0
else
    ans=0
    ("0000".."9999").each do |s|
        flag = true
        a,b,c,d = s[0],s[1],s[2],s[3]
        nums = [a,b,c,d].map{|x|x.to_i}
        nums.each do |i|
            flag = false if exc.include? i
        end
        inc.each do |i|
            flag = false if !nums.include? i
        end
        ans += 1 if flag
    end
    puts ans
end