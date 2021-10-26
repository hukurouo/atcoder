# https://atcoder.jp/contests/abc068/tasks/abc068_b

#入力
N = gets.to_i

pp = [1,2,4,8,16,32,64,128]
pp.each do |pn|
    if pn>N
        p pn/2
        exit
    end
end

# 出力
print("#{res}\n")