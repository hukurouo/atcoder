# https://atcoder.jp/contests/abc227/tasks/abc227_a
 
N,K,A = gets.chomp.split.map(&:to_i);
 
cnt = 0
num = A
while cnt < K do
    cnt += 1
    if cnt == K
        puts num
        exit
    end
    num += 1
    if num > N
        num = 1
    end
end

# a問はとにかく愚直に書き下す