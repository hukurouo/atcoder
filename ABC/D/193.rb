# https://atcoder.jp/contests/abc193/tasks/abc193_d

K = gets.to_i
S = gets.chomp.to_i.to_s
T = gets.chomp.to_i.to_s

used={}
(1..9).each do |i|
    used[i]=0
end
S.chars.each do |c|
    d = c.to_i
    used[d]+=1
end
T.chars.each do |c|
    d = c.to_i
    used[d]+=1
end

def score(cards, i)
    arr = Array.new(10,0)
    cards.chars.each do |c|
        d = c.to_i
        arr[d]+=1
    end
    arr[i]+=1
    score = 0
    arr.each_with_index do |a,i|
        score += (i*(10**a))
    end
    score
end

wins = []
loses = []

i=1
while i<=9
    used[i]+=1
    j=1
    while j<=9
        used[j]+=1
        if used[i] <= K && used[j] <= K
            score_t = score(S,i)
            score_a = score(T,j)
            if score_t > score_a
                wins << [i,j]
            else
                loses << [i,j]
            end
        end
        used[j]-=1
        j+=1
    end
    used[i]-=1
    i+=1
end

card_num = 9*K - 8
ans = 0
wins.each do |i,j|
    t1 = (K-used[i]).to_f/card_num
    used[i]+=1
    t2 = (K-used[j]).to_f/(card_num-1)
    ans += t1*t2
    used[i]-=1
end
puts ans