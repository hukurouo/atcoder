# https://atcoder.jp/contests/tenka1-2018-beginner/tasks/tenka1_2018_c

N = gets.to_i
arr = Array.new(N) { gets.to_i }.sort.reverse

la=[]
sm=[]
if N%2==0
    arr.each_with_index do |a,i|
        if i<(N/2)
            la << a
        else
            sm << a
        end
    end
    sum=0
    sm.each do |n|
        sum -= 2*n
    end
    la.each do |n|
        sum += 2*n
    end
    sum += sm.max
    sum -= la.min
    
    puts sum
else
    # large prior
    arr.each_with_index do |a,i|
        if i<(N/2)+1
            la << a
        else
            sm << a
        end
    end
    sum1=0
    sm.each do |n|
        sum1 -= 2*n
    end
    la.each do |n|
        sum1 += 2*n
    end
    sum1 -= la.min(2).sum

    # small prior
    la=[]
    sm=[]
    arr.each_with_index do |a,i|
        if i<(N/2)
            la << a
        else
            sm << a
        end
    end
    sum2=0
    sm.each do |n|
        sum2 -= 2*n
    end
    la.each do |n|
        sum2 += 2*n
    end
    sum2 += sm.max(2).sum
    puts [sum1,sum2].max
end