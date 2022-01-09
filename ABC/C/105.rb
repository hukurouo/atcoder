# https://atcoder.jp/contests/abc105/tasks/abc105_c

n = gets.to_i

if n==0
    puts 0
    exit
end

bits = []

# 2進法展開と同じことをする
while n!=0
    # nを(-2)で割ったあまりを求める. -1だったら+2
    r = n % (-2)
    r+=2 if r<0

    # nから余りを取り除いて(-2)で割る
    n = (n-r)/(-2)

    bits << r
end

puts bits.reverse.join("")

# 2進法展開のサンプル
# 
# bits=[]
# while n!=0
#     r=n%2
#     n=(n-r)/2
#     bits<<r
# end