# https://atcoder.jp/contests/code-festival-2017-quala/tasks/code_festival_2017_quala_b

N,M,K = gets.chomp.split.map(&:to_i)

(0..N).each do |k|
    (0..M).each do |l|
        if K == k*M + l*N - 2*k*l
            puts "Yes"
            exit
        end
    end
end
puts "No"