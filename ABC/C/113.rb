# https://atcoder.jp/contests/abc113/tasks/abc113_c

N,M = gets.chomp.split.map(&:to_i)
arr = Array.new(M) { gets.split.map(&:to_i) }

hash={}
arr.each_with_index do |a,i|
    pref = a[0]
    year = a[1]
    hash[pref]||=[]
    hash[pref] << [year, i]
end
ans = Array.new(M,"")
hash.each do |k,v|
    v.sort_by{|x|x[0]}.each_with_index do |v2,i|
        j = v2[1]
        p_str = format("%06<n>d",n: k)
        x_str = format("%06<n>d",n: i+1)
        ans[j] = p_str + x_str
    end
end
ans.each do |a|
    puts a
end