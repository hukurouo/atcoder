# https://atcoder.jp/contests/arc081/tasks/arc081_a

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

hash = arr.tally.sort.reverse
ans = []
i = 0
while ans.size < 2 && hash[i]
    if hash[i][1] >= 4
        if ans.size == 0
            ans << hash[i][0]
            ans << hash[i][0]
        else
            ans << hash[i][0]
        end
    end
    if hash[i][1] >= 2
        ans << hash[i][0]
    end
    i+=1
end
if ans.size < 2
    puts 0
else
    puts ans[0]*ans[1]
end