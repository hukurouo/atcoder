# https://atcoder.jp/contests/arc126/tasks/arc126_a

T = gets.to_i
cases = Array.new(T) { gets.split.map(&:to_i) }

cases.each do |n2,n3,n4|
    cnt=0
    n1 = n2
    n2 = n4
    n3 = n3/2
    if n2>=1 && n3>=1
        m = [n2,n3].min
        cnt += m
        n2 -= m
        n3 -= m
    end
    if n3>=1 && n1>=2
        m = [n3,n1/2].min
        cnt += m
        n3 -= m
        n1 -= m*2
    end
    if n2>=2 && n1>=1
        m = [n2/2,n1].min
        cnt += m
        n2 -= m*2
        n1 -= m
    end
    if n2>=1 && n1>=3
        m = [n2,n1/3].min
        cnt += m
        n2 -= m
        n1 -= m*3
    end
    if n1>=5
        m = n1/5
        cnt += m
    end
    puts cnt
end