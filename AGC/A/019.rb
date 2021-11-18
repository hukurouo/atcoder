# https://atcoder.jp/contests/agc019/tasks/agc019_a

# 0,25 0,5 1 2
Q,H,S,D = gets.chomp.split.map(&:to_i);
N = gets.to_i

l1 = [4*Q, 2*H, S].min

if N==1
    puts l1
    exit
end

if l1*2 < D
    puts N*l1
else
    if N%2 == 0
        puts N*D/2
    else
        div = N/2
        puts div*D + l1
    end
end