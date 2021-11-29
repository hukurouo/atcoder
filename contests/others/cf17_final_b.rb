# https://atcoder.jp/contests/cf17-final/tasks/cf17_final_b

s = gets.chomp

if s.size == 1
    puts "YES"
elsif s.size == 2
    if s.chars.uniq.size == 1
        puts "NO"
    else
        puts "YES"
    end
else
    if s.chars.uniq.size == 3
        hash = {"a"=>0,"b"=>0,"c"=>0}
        s.chars.each do |c|
            hash[c]+=1
        end
        ans = "YES"
        ans = "NO" if (hash["a"] - hash["b"]).abs > 1
        ans = "NO" if (hash["a"] - hash["c"]).abs > 1
        ans = "NO" if (hash["c"] - hash["b"]).abs > 1
        puts ans
    else
        puts "NO"
    end
end