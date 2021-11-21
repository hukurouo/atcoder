# https://atcoder.jp/contests/abc093/tasks/arc094_a

a,b,c = gets.chomp.split.map(&:to_i);

if (a%2==0 && b%2==0 && c%2==0) || (a%2==1 && b%2==1 && c%2==1)
    max = [a,b,c].max
    min = [a,b,c].min(2)
    puts ((max-min[0])+(max-min[1]))/2
elsif [a%2, b%2, c%2].count(0) == 1 # 奇数x2
    a+=1 if a%2==1
    b+=1 if b%2==1
    c+=1 if c%2==1
    max = [a,b,c].max
    min = [a,b,c].min(2)
    puts ((max-min[0])+(max-min[1]))/2 + 1
elsif [a%2, b%2, c%2].count(0) == 2 # 奇数x1
    a+=1 if a%2==0
    b+=1 if b%2==0
    c+=1 if c%2==0
    max = [a,b,c].max
    min = [a,b,c].min(2)
    puts ((max-min[0])+(max-min[1]))/2 + 1
end