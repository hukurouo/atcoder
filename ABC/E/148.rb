# https://atcoder.jp/contests/abc148/tasks/abc148_e

N = gets.to_i

if N%2==1
    puts 0
else
    # 末尾に続く0の個数はある数を素因数分解したときのmin(2の個数, 5の個数)となる
    # 2はたくさんあるので5の個数を数えればいい
    # 5の倍数の個数 => 1桁目が5の数字は無いので、10の倍数を数える => floor(N/10)
    # 5**2の倍数の個数 => floor(N/50)
    # 5**3の倍数の個数  => floor(N/250)
    # これを繰り返してsumをとる
    ans = 0
    div = 10
    while div <= N
        ans += N/div
        div = div*5
    end
    puts ans
end