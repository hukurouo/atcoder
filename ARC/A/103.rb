# https://atcoder.jp/contests/abc111/tasks/arc103_a

n = gets.to_i
arr = gets.chomp.split.map(&:to_i)

hashe = {}
hasho = {}
arr.each_with_index do |a,i|
    if i%2==0
        hashe[a]||=0
        hashe[a]+=1
    else
        hasho[a]||=0
        hasho[a]+=1
    end
end
moste = hashe.sort_by { |_, v| v }.last[0]
mosto = hasho.sort_by { |_, v| v }.last[0]

moste_cnt = hashe.sort_by { |_, v| v }.last[1]
mosto_cnt = hasho.sort_by { |_, v| v }.last[1]
moste2_cnt = 0
moste2_cnt = hashe.sort_by { |_, v| v }[-2][1] if hashe.sort_by { |_, v| v }[-2]
mosto2_cnt = 0
mosto2_cnt = hasho.sort_by { |_, v| v }[-2][1] if hasho.sort_by { |_, v| v }[-2]

if moste == mosto
    puts [(n-moste_cnt-mosto2_cnt), (n-moste2_cnt-mosto_cnt)].min
else
    puts n-moste_cnt-mosto_cnt
end
