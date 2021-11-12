# https://atcoder.jp/contests/abc109/tasks/abc109_b

N = gets.to_i
arr = Array.new(N) { gets.chomp }

if N != arr.uniq.size
    puts "No"
    exit
end

(N-1).times do |i|
    if arr[i][-1] != arr[i+1][0]
        puts "No"
        exit
    end
end

puts "Yes"