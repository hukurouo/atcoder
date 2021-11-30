# https://atcoder.jp/contests/agc011/tasks/agc011_a

N,C,K = gets.chomp.split.map(&:to_i)
arr = Array.new(N) { gets.to_i }.sort

ans = 0
cnt = 0
first = arr[0]
arr.each_with_index do |a,i|
    cnt += 1
    break if !arr[i+1]
    # 搭乗制限 || 時間制限
    if cnt >= C || (arr[i+1]-first) > K
        ans += 1
        cnt = 0
        first = arr[i+1]
    end
end
if cnt>0
    ans+=1
end
puts ans