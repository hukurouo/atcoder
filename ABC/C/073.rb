# https://atcoder.jp/contests/abc073/tasks/abc073_c

N = gets.to_i
arr = Array.new(N) { gets.to_i }

hash = {}
arr.each do |a|
    if hash[a] == nil
        hash[a] = 1
    elsif hash[a] == 0
        hash[a] = 1
    else
        hash[a] = 0
    end
end

ans = 0
hash.each do |k,v|
    ans += 1 if v==1
end
puts ans