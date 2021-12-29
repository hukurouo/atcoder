# https://atcoder.jp/contests/abc045/tasks/arc061_a

s = gets.chomp

ans=0
[0, 1].repeated_permutation(s.size-1).each do |bits|
    nums=[]
    arr=s.split(//)
    t=arr.shift
    bits.each do |b|
        if b==0
            t+=arr.shift
        else
            nums << t.to_i
            t=arr.shift
        end
    end
    nums << t.to_i
    ans += nums.sum
end
puts ans