# https://atcoder.jp/contests/abc149/tasks/abc149_c

X = gets.to_i

def fetch_prime_list(max)
    table = Array.new(max + 1,true)
    prime_list = []
  
    (2..max).each do |num|
        if table[num] == true
            prime_list << num
            k = num * num
            while k <= max
                table[k] = false
                k += num
            end
        end
    end
    return prime_list
end

pl = fetch_prime_list(110000)

puts pl.select{|num|num>=X}.first

# 素数判定