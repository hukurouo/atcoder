# https://atcoder.jp/contests/abc131/tasks/abc131_d

N = gets.to_i
arr = Array.new(N) { gets.split.map(&:to_i) }.sort_by{|x| x[1] }

cnt = 0
arr.each do |a|
    cnt += a[0]
    if cnt > a[1]
        puts "No"
        exit
    end
end

puts "Yes"