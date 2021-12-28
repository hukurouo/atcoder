# https://atcoder.jp/contests/arc084/tasks/arc084_a

N = gets.to_i
a = gets.chomp.split.map(&:to_i).sort
b = gets.chomp.split.map(&:to_i).sort
c = gets.chomp.split.map(&:to_i).sort

ans=0
b.each do |n|
    ai = a.bsearch_index{|x| x >= n} || a.size
    ai-=1
    ci = c.bsearch_index {|x| x > n} || (c.size)
    ans+= (ai+1)*(N-ci)
end
puts ans