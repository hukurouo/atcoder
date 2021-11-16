# https://atcoder.jp/contests/abc151/tasks/abc151_c

N,M = gets.chomp.split.map(&:to_i);
arr = Array.new(M) { gets.split }

hash = {}
hash_2 = {}
ans = 0
pen = 0
arr.each do |a|
    if a[1] == "WA"
        hash[a[0]]||=0
        hash[a[0]] += 1
    else
        if hash_2[a[0]].nil?
            ans += 1
            pen += hash[a[0]]||=0
            hash_2[a[0]] = 1
        end
    end
end

puts "#{ans} #{pen}"