# 二分探索
def binary_search(x, arr)
    arr.sort!
    left = 0
    right = arr.size
    while right - left > 0 do
        mid = (left + right) / 2
        if arr[mid] == x
            return true
        elsif arr[mid] < x
            left = mid + 1
        else
            right = mid
        end
    end
    false
end

def linear_search(x, arr)
    arr.each do |number|
      if number == x
        return "Found!"
      end
    end
  end

# test
arr = (1..500).to_a
x = 155
if binary_search(x, arr)
    p "find :)" 
else
    p "none :("
end

# benchmark
require 'benchmark'
arr = (1..10000000).to_a.reverse
puts Benchmark.measure { binary_search(9999999, arr) }
puts Benchmark.measure { arr.include? 9999999 }
puts Benchmark.measure { linear_search(9999999, arr) }

# 0.072620   0.040567   0.113187 (  0.113184)
# 0.040958   0.000522   0.041480 (  0.041491)
# 0.325105   0.000000   0.325105 (  0.325117)

# => arr.include? が一番早い