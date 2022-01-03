# https://atcoder.jp/contests/abc140/tasks/abc140_d

N,K = gets.chomp.split.map(&:to_i)
s = gets.chomp

lefts=["L"]
rights=["R"]
# R=>L
cnt=0
i=1
while i < N
    if cnt == K
        lefts << s[i]
        i+=1
        next
    end
    if s[i] == "L"
        if s[i-1] == "R"
            lefts << "L"
            cnt+=1
        else
            lefts << "L"
        end
    else
        lefts << "L"
    end
    i+=1
end
# L=>R
cnt=0
i=1
while i < N
    if cnt == K
        rights << s[i]
        i+=1
        next
    end
    if s[i] == "R"
        if s[i-1] == "L"
            rights << "R"
            cnt+=1
        else
            rights << "R"
        end
    else
        rights << "R"
    end
    i+=1
end
ansL=0
t=lefts[0]
i=1
while i < N
    ansL+=1 if t==lefts[i]
    t=lefts[i]
    i+=1
end
ansR=0
t=rights[0]
i=1
while i < N
    ansR+=1 if t==rights[i]
    t=rights[i]
    i+=1
end
puts [ansL,ansR].max
