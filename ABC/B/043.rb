# https://atcoder.jp/contests/abc043/tasks/abc043_b

s = gets.chomp

editor = ""
s.chars.each do |c|
    if c=="0"
        editor += "0"
    elsif c=="1"
        editor += "1"
    else
        editor.chop!
    end
end
puts editor