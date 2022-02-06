# https://atcoder.jp/contests/abc177/tasks/abc177_e

N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

class Eratosthenes
    def initialize(n)
      @is_prime = Array.new(n+1, true)
      @is_prime[1] = false
      @min_factor = Array.new(n+1)
      @min_factor[1] = 1
      i=2
      while i<=n
          if !@is_prime[i]
              i+=1
              next
          end
          @min_factor[i] = i
          j=i*2
          while j<=n
              @is_prime[j] = false
              @min_factor[j] = i if !@min_factor[j]
              j+=i
          end
          i+=1
      end
    end

    def min_factor(n)
        @min_factor[n]
    end
end

er = Eratosthenes.new(10**6)
memo = Array.new(N+1)
i=0
while i<N
    n = arr[i]
    while n > 1
        f = er.min_factor(n)
        if memo[f]
            if arr.inject(:gcd) == 1
                puts "setwise coprime"
            else
                puts "not coprime"
            end
            exit
        end
        while er.min_factor(n) == f
            n/=f
        end
        memo[f] = true
    end
    i+=1
end
puts "pairwise coprime"

# エラトステネスの篩
# 高速素因数分解