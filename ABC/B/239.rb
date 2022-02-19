# https://atcoder.jp/contests/abc239/tasks/abc239_b

X = gets.to_i

def ceil(n,d)
  if n%d==0
      return n/d
  else
      return n/d + 1
  end
end

puts X/10