# https://atcoder.jp/contests/diverta2019/tasks/diverta2019_c

N = gets.to_i
arr = Array.new(N) { gets.chomp }

ans = 0
hash={"ba"=>0,"b"=>0,"a"=>0}
arr.each do |s|
    t = 0
    (0..s.size-2).each do |i|
        t+=1 if s[i..i+1] == "AB"
    end
    ans += t
    if s[0] == "B" && s[-1] == "A"
        hash["ba"]+=1
    elsif s[0] == "B"
        hash["b"]+=1
    elsif s[-1] == "A"
        hash["a"]+=1
    end
end

if hash["a"]==0 && hash["b"]==0
    t = 0
    t += hash["ba"]-1 if hash["ba"]>=1
    puts ans + t
elsif (hash["a"]==1 && hash["b"]==0) || (hash["b"]==1 && hash["a"]==0)
    t = 0
    t += hash["ba"] if hash["ba"]>=1
    puts ans + t
else
    t = 0
    if hash["ba"]>=1
        t+=hash["ba"]+1
        hash["a"]-=1
        hash["b"]-=1
    end
    t+=[hash["a"],hash["b"]].min
    puts ans + t
end