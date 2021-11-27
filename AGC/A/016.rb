# https://atcoder.jp/contests/agc016/tasks/agc016_a

s = gets.chomp

hash = {}
s.chars.each do |c|
    hash[c]||=0
    hash[c]+=1
end

ans = 0
hash.each do |k,v|
    cnt = 0
    ts = Marshal.load(Marshal.dump(s))
    while ts.split.uniq.size != 1
        cnt += 1
        tts = ""
        (ts.size-1).times do |i|
            if ts[i] == k || ts[i+1] == k
                tts += k
            else
                tts += "*"
            end
        end
        ts = tts
    end
    ans = [cnt,ans].max
end
puts ans
