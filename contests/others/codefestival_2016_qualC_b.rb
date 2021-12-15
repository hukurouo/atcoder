# https://atcoder.jp/contests/code-festival-2016-qualc/tasks/codefestival_2016_qualC_b

K,T = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i).sort.reverse

ans = arr.shift
ans-=1
arr.each do |a|
    ans-=a
    if ans<0
        puts 0
        exit
    end
end
puts ans