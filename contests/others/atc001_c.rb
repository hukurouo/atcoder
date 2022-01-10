# https://atcoder.jp/contests/apc001/tasks/apc001_c

N = gets.to_i

# 初回
puts 0
STDOUT.flush
s = gets.chomp
if s=="Vacant"
    exit
elsif s=="Male"
    l=1
    r=N
    while r-l > 1
        mid = (l+r)/2
        puts mid
        STDOUT.flush
        s = gets.chomp
        if s=="Vacant"
            exit
        elsif s=="Male"
            if mid%2==0
                l=mid
            else
                r=mid
            end
        else
            if mid%2==0
                r=mid
            else
                l=mid
            end
        end
    end
    puts l
    STDOUT.flush
else
    l=1
    r=N
    while r-l > 1
        mid = (l+r)/2
        puts mid
        STDOUT.flush
        s = gets.chomp
        if s=="Vacant"
            exit
        elsif s=="Female"
            if mid%2==0
                l=mid
            else
                r=mid
            end
        else
            if mid%2==0
                r=mid
            else
                l=mid
            end
        end
    end
    puts l
    STDOUT.flush
end