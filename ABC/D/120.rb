# https://atcoder.jp/contests/abc120/tasks/abc120_d

# Disjoint Set Union
# https://github.com/universato/ac-library-rb/blob/main/lib/dsu.rb
class DSU
    def initialize(n)
      @n = n
      @parent_or_size = Array.new(n, -1)
      # root node: -1 * component size
      # otherwise: parent
    end
  
    attr_reader :parent_or_size, :n
  
    def merge(a, b)
      x = leader(a)
      y = leader(b)
      return x if x == y
  
      x, y = y, x if -@parent_or_size[x] < -@parent_or_size[y]
      @parent_or_size[x] += @parent_or_size[y]
      @parent_or_size[y] = x
    end
    alias unite merge
  
    def same?(a, b)
      leader(a) == leader(b)
    end
    alias same same?
  
    def leader(a)
      unless 0 <= a && a < @n
        raise ArgumentError.new, "#{a} is out of range (0...#{@n})"
      end
  
      @parent_or_size[a] < 0 ? a : (@parent_or_size[a] = leader(@parent_or_size[a]))
    end
    alias root leader
    alias find leader
  
    def size(a)
      -@parent_or_size[leader(a)]
    end
  
    def groups
      (0 ... @parent_or_size.size).group_by{ |i| leader(i) }.values
    end
end
  
UnionFind = DSU

#入力
N,M=gets.chomp.split(" ").map(&:to_i)
arr = Array.new(M) { gets.split.map(&:to_i).map{|x|x-=1} }

all = (N*(N-1))/2
ans = [all]
d = DSU.new(N)
arr.reverse.each do |a|
    left = d.size(a[0])
    right = d.size(a[1])
    d.merge(a[0],a[1])
    n = d.size(a[0])
    diff = (n*(n-1))/2 - (left*(left-1))/2 - (right*(right-1))/2
    diff = 0 if left == n
    t_ans = ans.last - diff
    ans << t_ans
end
ans.pop

puts ans.reverse

# 無向グラフ
# UnionFind
# 木