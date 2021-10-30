# https://atcoder.jp/contests/abc225/tasks/abc225_d

# 入力
N,Q = gets.chomp.split.map(&:to_i);
queryList = Array.new(Q) { gets.split.map(&:to_i) }
front = Array.new(N+1,nil)
back = Array.new(N+1,nil)

queryList.each do |query|
    if query[0] == 1
        t1 = query[1]
        t2 = query[2]
        back[t1] = t2
        front[t2] = t1
    end
    if query[0] == 2
        t1 = query[1]
        t2 = query[2]
        back[t1] = nil
        front[t2] = nil
    end
    if query[0] == 3
        num = query[1]
        while front[num] != nil do
            num = front[num]
        end
        trains = []
        while num != nil do
            trains << num
            num = back[num]
        end
        print("#{trains.size} #{trains.join(" ")}\n")
    end
end

# 連結