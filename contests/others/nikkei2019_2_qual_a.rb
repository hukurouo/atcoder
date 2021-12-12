# https://atcoder.jp/contests/nikkei2019-2-qual/tasks/nikkei2019_2_qual_a

N = gets.to_i

def ceil(n,d)
    if n%d==0
        return n/d
    else
        return n/d + 1
    end
end

puts ceil(N,2) - 1

