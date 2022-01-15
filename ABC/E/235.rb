# https://atcoder.jp/contests/abc235/tasks/abc235_e

N,M,Q = gets.chomp.split.map(&:to_i)
abc = Array.new(M) { gets.split.map(&:to_i) }
uvw = Array.new(Q) { gets.split.map(&:to_i) }

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
  
edges = []
abc.each do |a,b,c|
    edges << [a,b,c,1]
end
query = {}
uvw.each do |u,v,w|
    edges << [u,v,w,0]
end
edges = edges.sort_by{|x|[x[2],x[3]]}

d = DSU.new(N)
edges.each do |a,b,c,q|
    if !d.same?(a-1,b-1)
        if q==0
            query[[a,b,c]] = true
        else
            d.merge(a-1,b-1)
        end
    end
end
uvw.each do |key|
    if query[key]
        puts "Yes"
    else
        puts "No"
    end
end