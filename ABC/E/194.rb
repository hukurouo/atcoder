# https://atcoder.jp/contests/abc194/tasks/abc194_e

N,M = gets.chomp.split.map(&:to_i)
arr = arr = gets.chomp.split.map(&:to_i)

hash={}
i=0
while i<M
    d = arr[i]
    hash[d]||=0
    hash[d]+=1
    i+=1
end
ans=0
i=0
while hash[i]
    ans+=1
    i+=1
end

i=1
while i < (N-M+1)
    pop = arr[i-1]
    push = arr[i+M-1]
    hash[pop]-=1 if hash[pop]
    if hash[push] && push <= ans 
        hash[push]+=1 
    end
    if hash[pop] == 0
        ans = [ans,pop].min
    end
    i+=1
end
puts ans