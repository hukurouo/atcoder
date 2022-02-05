# https://atcoder.jp/contests/abc238/tasks/abc238_e

N,Q = gets.chomp.split.map(&:to_i)
arr = Array.new(Q) { gets.split.map(&:to_i) }

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
  
d = DSU.new(N+1)
arr.each do |l,r|
    d.merge(l-1,r)
end
if d.same?(0,N)
    puts "Yes"
else
    puts "No"
end