# https://atcoder.jp/contests/abc131/tasks/abc131_c

a,b,c,d = gets.chomp.split.map(&:to_i)

all = b-a

# .ceil の代わりにこれを使う  
def start_index(n,d)
    if n%d==0
        return n/d
    else
        return n/d + 1
    end
end

c_cnt = (b/c) - start_index(a,c)
d_cnt = (b/d) - start_index(a,d)
lcm = c.lcm(d)
lcm_cnt = (b/lcm) - start_index(a,lcm)

puts all - c_cnt - d_cnt + lcm_cnt

# 切り上げ