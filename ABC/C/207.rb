# https://atcoder.jp/contests/abc207/tasks/abc207_c

N = gets.to_i
arr = Array.new(N) { gets.split.map(&:to_i) }

arr2=[]
i=0
while i<N
    t,l,r = arr[i]
    if t==2
        r-=0.5
    elsif t==3
        l+=0.5
    elsif t==4
        r-=0.5
        l+=0.5
    end
    arr2 << [t,l,r]
    i+=1
end

ans=0
i=0
while i<N
    j=0
    _,l,r = arr2[i]
    while j<N
        if i==j
            j+=1
            next
        end
        _,l2,r2 = arr2[j]
        if r2 >= l && l2 <= r || r >= l2 && l <= r2
            ans+=1
        end
        j+=1
    end
    i+=1
end
puts ans/2

# 開区間と閉区間