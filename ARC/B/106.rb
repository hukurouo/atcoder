# https://atcoder.jp/contests/arc106/tasks/arc106_b

N,M = gets.chomp.split.map(&:to_i)
aa = gets.chomp.split.map(&:to_i)
bb = gets.chomp.split.map(&:to_i)
cd = Array.new(M) { gets.split.map(&:to_i) }

hash={}
cd.each do |c,d|
    hash[c]||=[]
    hash[c]<<d
    hash[d]||=[]
    hash[d]<<c
end

memo = Array.new(N)
i=0
while i<N
    if memo[i]
        i+=1
        next
    end
    queue = [i]
    ta,tb=0,0
    until queue.empty?
        i = queue.shift
        next if memo[i]
        memo[i] = true
        ta+=aa[i]
        tb+=bb[i]
        next unless hash[i+1]
        hash[i+1].each do |j|
            queue << j-1
        end
    end
    if ta!=tb
        puts "No"
        exit
    end
end
puts "Yes"