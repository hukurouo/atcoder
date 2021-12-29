# https://atcoder.jp/contests/tenka1-2017/tasks/tenka1_2017_c

N = gets.to_i

h=1
n=1
while h<=3500
    n=0
    while n<=3500
        w = (N*h*n) / ((4*h*n) - N*n - N*h).to_f
        if w%1==0 && w>=1
            puts "#{h} #{n} #{w.to_i}"
            exit
        end
        n+=1
    end
    h+=1
end