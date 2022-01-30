# https://atcoder.jp/contests/abc237/tasks/abc237_d

N = gets.to_i
s = gets.chomp

hash = {}
s.chars.each_with_index do |c,i|
    if c=="L"
        hash[i]||={left: nil, right: nil}
        hash[i+1]||={left: nil, right: nil}
        if left = hash[i][:left]
            hash[i+1][:left] = left
            hash[i+1][:right] = i
            hash[left][:right] = i+1
            hash[i][:left] = i+1
        else
            hash[i][:left] = i+1
            hash[i+1][:right] = i
        end
    else
        hash[i]||={left: nil, right: nil}
        hash[i+1]||={left: nil, right: nil}
        if right = hash[i][:right] 
            hash[i+1][:left] = i
            hash[i+1][:right] = right
            hash[right][:left] = i+1
            hash[i][:right] = i+1
        else
            hash[i][:right] = i+1
            hash[i+1][:left] = i
        end
    end
end

key = 0
hash.each do |k,v|
    if v[:left] == nil
        key = k
        break
    end
end
ans = [key]
while hash[key][:right] != nil
    ans << hash[key][:right]
    key = hash[key][:right]
end
puts ans.join(" ")