# https://atcoder.jp/contests/abc188/tasks/abc188_d

N,C = gets.chomp.split.map(&:to_i)
arr = Array.new(N) { gets.split.map(&:to_i) }

list = [] # [time, is_start, fee]
arr.each do |a,b,c|
    list << [a, 1, c]
    list << [b+1, 0, c]
end
list = list.sort_by{|x|[x[0],x[1]]}

ans=0
t=0
now=1
while list.size > 1
    # 解約
    while list[0] && now == list[0][0] && list[0][1] == 0
        _, _, fee = list.shift
        t -= fee
    end
    # 開始
    while list[0] && now == list[0][0] && list[0][1] == 1
        _, _, fee = list.shift
        t += fee
    end

    if !list[0]
        break
    end

    # 計算
    next_time = list[0][0]
    period = next_time - now
    money = [t, C].min
    ans += money * period
    now = next_time
end
puts ans