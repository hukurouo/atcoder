# https://atcoder.jp/contests/abc157/tasks/abc157_d

N,M,K = gets.chomp.split.map(&:to_i)
ab = Array.new(M) { gets.split.map(&:to_i) }
cd = Array.new(K) { gets.split.map(&:to_i) }

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
f={}
ab.each do |a,b|
    d.merge(a, b)
    f[a]||=[]
    f[a]<<b
    f[b]||=[]
    f[b]<<a
end
bl={}
cd.each do |c,d|
    bl[c]||=[]
    bl[c]<<d
    bl[d]||=[]
    bl[d]<<c
end

ans=Array.new(N)
d.groups.each do |group|
    next if group == [0]
    n = group.size - 1
    group.each do |i|
        t = n
        if f[i]
            f[i].each do |j|
                if d.same?(i,j)
                    t-=1
                end
            end
        end
        if bl[i]
            bl[i].each do |j|
                if d.same?(i,j)
                    t-=1
                end
            end
        end
        ans[i-1] = t
    end
end
puts ans.join(" ")