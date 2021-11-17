# https://atcoder.jp/contests/agc041/tasks/agc041_a

N,a,b = gets.chomp.split.map(&:to_i);

if (b-a)%2 == 0
    puts (b-a)/2
else
    ans = Float::INFINITY
    top = [a-1,b-1].max
    bottom = [N-a,N-b].max
    ans = [top,bottom].min

    # route2
    t = [N-a,N-b,a-1,b-1].min
    ans = [ans, ((b+1-a)/2)+t].min

    puts ans
end