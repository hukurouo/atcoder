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

  def is_prime?(n)
    @is_prime[n]
  end

  def min_factor(n)
    @min_factor[n]
  end

  # 高速素因数分解
  def factorize(n)
    res = []
    while num > 1
      f = @min_factor[num]
      exp = 0
      while @min_factor[num] == f
          num/=f
          exp+=1
      end
      res << [f,exp]
    end
    res
  end

  # 高速約数列挙
  def divisors(n)
    factorize(n).inject([1]) do |ary, (p, e)|
      (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
    end.sort
  end

end