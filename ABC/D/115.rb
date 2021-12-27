# https://atcoder.jp/contests/abc115/tasks/abc115_d

N,X = gets.chomp.split.map(&:to_i)

@arr = [1]
@pty = [1]
N.times do |i|
    @arr << @arr.last * 2 + 3
    @pty << @pty.last * 2 + 1
end

def f(n,x)
    if n==0
        if x<=0
            return 0
        else
            return 1
        end
    elsif x <= 1+@arr[n-1]
        return f(n-1,x-1)
    else
        return @pty[n-1] + 1 + f(n-1, x-2-@arr[n-1])
    end
end
puts f(N,X)