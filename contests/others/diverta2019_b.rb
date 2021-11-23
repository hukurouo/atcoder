# https://atcoder.jp/contests/diverta2019/tasks/diverta2019_b

R,G,B,N = gets.chomp.split.map(&:to_i)

cnt = 0
r,g,b = 0,0,0
while (R*r + G*g + B*b) <= N
    while (R*r + G*g + B*b) <= N
        cnt+=1 if (N-R*r-G*g)%B == 0
        g+=1
    end
    g=0
    r+=1
end
puts cnt
