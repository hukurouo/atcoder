# https://atcoder.jp/contests/agc003/tasks/agc003_a

s = gets.chomp

hash = {"S"=>0, "E"=>0, "N"=>0, "W"=>0}
ans = "Yes"
s.chars.each do |c|
    hash[c]+=1
end

if (hash["S"] > 0 && hash["N"] > 0) || (hash["S"] == 0 && hash["N"] == 0)
else
    ans = "No"
end

if (hash["E"] > 0 && hash["W"] > 0) || (hash["E"] == 0 && hash["W"] == 0)
else
    ans = "No"
end

puts ans